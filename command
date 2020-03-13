function run_command() {
    case $1 in
    "s"|"start")
        echo "== Starting services =="
        for package in ${SOLUTION_UI_SERVICE}; do
            echo "== Staring ${package}"
            up_service ${package}
        done
        ;;
    "clone")
        echo "== Cloning solution packages locally ... =="
        for package in ${SOLUTION_PACKAGES}; do
            echo "==${SOLUTION_ORG} ${package} == line"
            clone ${SOLUTION_ORG} ${package}
        done
        echo "== Cloning solution packages locally Done =="
        ;;
    *)
     echo "Commands:"
     esac
}
