class BootStrap {

    def init = { servletContext ->
        Locale.setDefault(Locale.ITALIAN)
    }
    def destroy = {
    }
}
