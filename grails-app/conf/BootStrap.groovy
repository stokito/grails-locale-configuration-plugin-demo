class BootStrap {

    def init = { servletContext ->
        //WATCHME
        Locale.setDefault(Locale.ITALIAN)
    }
    def destroy = {
    }
}
