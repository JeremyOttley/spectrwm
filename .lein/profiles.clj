{:user {:dependencies [[org.clojure/tools.namespace "0.2.3"]
                       [clj-http "3.10.0"]
                       [cheshire "5.10.0"]]
        :injections [(require '[clojure.tools.namespace.repl :refer [refresh refresh-all clear]]
                              '[clojure.java.io :as io]
                              '[clojure.java.javadoc :refer [javadoc]]
                              '[clojure.pprint :refer [pprint]]
                              '[clojure.reflect :refer [reflect]]
                              '[clojure.repl :refer [apropos dir doc find-doc pst source]]
                              '[clojure.set :as set]
                              '[clojure.string :as string]
                              '[clojure.test :as test]
                              '[clj-http.client :as http]
                              '[cheshire.core :refer :all]
                              '[clojure.edn :as edn])]
        :plugins [[lein-try "0.4.3"]
                  [jonase/eastwood "0.3.10"]
                  [lein-kibit "0.1.8"]
                  [cider/cider-nrepl "0.24.0"]
                  [lein-ancient "0.6.15"]
                  [venantius/ultra "0.6.0"]]}
 :repl {:plugins [[cider/cider-nrepl "0.24.0"]]
        :dependencies [[nrepl "0.4.5"]]
        :repl-options {:timeout 150000
                       :prompt (fn [ns] (format "%s(%s) => " ns (System/getenv "HOME")))}}}
