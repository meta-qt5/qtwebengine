TEMPLATE=subdirs

qtHaveModule(webengine) {
    SUBDIRS += \
        webengine/minimal \
        webengine/quicknanobrowser
}

qtHaveModule(webenginewidgets) {
    SUBDIRS += \
        webenginewidgets/minimal \
        webenginewidgets/contentmanipulation \
        webenginewidgets/cookiebrowser \
        webenginewidgets/demobrowser \
        webenginewidgets/markdowneditor \
        webenginewidgets/simplebrowser

    !contains(WEBENGINE_CONFIG, no_spellcheck):!osx:!cross_compile {
        SUBDIRS += webenginewidgets/spellchecker
    }

}
