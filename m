Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B25EA4E9EF1
	for <lists+linux-man@lfdr.de>; Mon, 28 Mar 2022 20:28:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237116AbiC1S3l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Mar 2022 14:29:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236321AbiC1S3k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Mar 2022 14:29:40 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98E034EF79
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 11:27:58 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id a1so21594504wrh.10
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 11:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YIkghThQYmDq2EHecZATynTEKOmdJCstZ7QqwVEhwz0=;
        b=C9QlH3STNkbA2He/CPGezH3L4LDoALrtVMuhaGbqO3kjuy02im/bWHJpV4AyN8f9qh
         kUfnHaOUN88Ykx1OLxo4XLfq3fNlZccvaFTNhgkUjf0lQzcx4kFYqZWnx2f8NvC0LVjW
         kO3GkYUWUUf1dkYXuzicbZNZrLpQt6oWLoMwv2+J6ZhhCtwJE1ABKgbYAz98LNC/68Jk
         k8QDeErOs9tjBC5geGdAgXsU32cdi5YXE3UH5EWYhQJg44yrfPNtGq0VJlneg4lCHQUG
         DiixriDXuGE19rV51K8bmCjHRzOGhwl66Z07qwlAiP1oXON1jA7QrTjuKmCotr78M2Ba
         PgtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YIkghThQYmDq2EHecZATynTEKOmdJCstZ7QqwVEhwz0=;
        b=py7g99hnnEH6BAMbVAtQICVB5I7dnqjraGzTYgAtPPlZHOJtLBWji3HAKdmY9HemDe
         P/xd9Rf/dwhEfKIYU8q/oTXApcrKGSe9yzrS+ox2jJvquB7mGcyLewFPK9ONfbYI9bPo
         IOIb8/B+AIxq4CewKqGYAPatZzYPZ1ivknbbuM6lWYSD2lbcYsZU8wa+k/uqCY78OaUq
         fpzhRN6jfDY6VqKNFIolCxARvudW/YN5ihFs6fxnWpq/T5S5IX9qNb0ryG7KyZYOFHMd
         BQxxw6OK0nJBRAE+psmLFMUhgGoJj0psWW9bSBPp2uNZQ/rSIaBKIbOW72eMAisVf/em
         2fFw==
X-Gm-Message-State: AOAM532J36iWnZf21wRJoxD3r2aa6KhL4J3fzf0oDyxy4zTj06zyfymT
        b1ZumXqIacOvGJFzUM64ReQ=
X-Google-Smtp-Source: ABdhPJydpmaPgZBzOFsFvmfTwaQ76u9d2HqEL8gKAt2liNOgtD/l6rK5WVyPEJX0VGGYrW4v92VQHA==
X-Received: by 2002:a05:6000:1a85:b0:205:a4f1:dba4 with SMTP id f5-20020a0560001a8500b00205a4f1dba4mr19550789wry.381.1648492076887;
        Mon, 28 Mar 2022 11:27:56 -0700 (PDT)
Received: from dell7760.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u11-20020a056000038b00b00203e5c9aa09sm19074116wrf.27.2022.03.28.11.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 11:27:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        NGINX Unit <unit@nginx.org>, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH] uri.7: The term URL is deprecated, in favor of URI
Date:   Mon, 28 Mar 2022 20:27:08 +0200
Message-Id: <20220328182707.6935-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

See RFCs 4395 (obsoleted by 7595) and 7595.

So, since URI and URL have been used as synonims and it wasn't
clear to most people what the difference was, the RFCs seem to
have explicitly avoided URL, and now use URI as the only term,
which still means what it meant (so now URL is just a synonim for
URI).

This commit replaces (almost all) occurences of URL by URI,
except when it is referring to the old term itself.  Keep some
legacy info just for readers to understand this.

Cc: NGINX Unit <unit@nginx.org>
Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/uri.7 | 101 +++++++++++++++++++++++++++--------------------------
 1 file changed, 52 insertions(+), 49 deletions(-)

diff --git a/man7/uri.7 b/man7/uri.7
index e9cfd4654..50121b24e 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -51,20 +51,23 @@ relative_path = relative_segment [ absolute_path ]
 .SH DESCRIPTION
 A Uniform Resource Identifier (URI) is a short string of characters
 identifying an abstract or physical resource (for example, a web page).
-A Uniform Resource Locator (URL) is a URI
-that identifies a resource through its primary access
-mechanism (e.g., its network "location"), rather than
-by name or some other attribute of that resource.
-A Uniform Resource Name (URN) is a URI
-that must remain globally unique and persistent even when
-the resource ceases to exist or becomes unavailable.
+It normally identifies a resource through its primary access
+mechanism (e.g., its network "location").
+.PP
+Uniform Resource Locator (URL)
+used to refer to a subset of URIs,
+but since the distinction is not easy,
+the term has been superseeded by URI
+and can be understood as a synonim of URI.
+.PP
+A Uniform Resource Name (URN) is a URI that uses the urn: scheme,
+and must remain globally unique and persistent
+even when the resource ceases to exist or becomes unavailable.
 .PP
 URIs are the standard way to name hypertext link destinations
 for tools such as web browsers.
-The string "http://www.kernel.org" is a URL (and thus it
-is also a URI).
-Many people use the term URL loosely as a synonym for URI
-(though technically URLs are a subset of URIs).
+The string "http://www.kernel.org" is a URI.
+Many people use the term URL loosely as a synonym for URI.
 .PP
 URIs can be absolute or relative.
 An absolute identifier refers to a resource independent of
@@ -89,7 +92,7 @@ A URI beginning with \(aq#\(aq refers to that fragment in the current resource.
 There are many different URI schemes, each with specific
 additional rules and meanings, but they are intentionally made to be
 as similar as possible.
-For example, many URL schemes
+For example, many URI schemes
 permit the authority to be the following format, called here an
 .I ip_server
 (square brackets show what's optional):
@@ -108,8 +111,8 @@ logs into a web server on host example.com
 as fred (using fredpassword) using port 8080.
 Avoid including a password in a URI if possible because of the many
 security risks of having a password written down.
-If the URL supplies a username but no password, and the remote
-server requests a password, the program interpreting the URL
+If the URI supplies a username but no password, and the remote
+server requests a password, the program interpreting the URI
 should request one from the user.
 .PP
 Here are some of the most common schemes in use on UNIX-like systems
@@ -123,7 +126,7 @@ schemes; see those tools' documentation for information on those schemes.
 .br
 .RI http:// ip_server / path ? query
 .PP
-This is a URL accessing a web (HTTP) server.
+This is a URI accessing a web (HTTP) server.
 The default port is 80.
 If the path refers to a directory, the web server will choose what
 to return; usually if there is a file named "index.html" or "index.htm"
@@ -158,7 +161,7 @@ for more information.
 .PP
 .RI ftp:// ip_server / path
 .PP
-This is a URL accessing a file through the file transfer protocol (FTP).
+This is a URI accessing a file through the file transfer protocol (FTP).
 The default port (for control) is 21.
 If no username is included, the username "anonymous" is supplied, and
 in that case many clients provide as the password the requestor's
@@ -179,7 +182,7 @@ The default gopher port is 70.
 .I gophertype
 is a single-character field to denote the
 Gopher type of the resource to
-which the URL refers.
+which the URI refers.
 The entire path may also be empty, in
 which case the delimiting "/" is also optional and the gophertype
 defaults to "1".
@@ -233,7 +236,7 @@ presence of the "@" character.
 .PP
 .RI telnet:// ip_server /
 .PP
-The Telnet URL scheme is used to designate interactive text services that
+The Telnet URI scheme is used to designate interactive text services that
 may be accessed by the Telnet protocol.
 The final "/" character may be omitted.
 The default port is 23.
@@ -249,12 +252,12 @@ This represents a file or directory accessible locally.
 As a special case,
 .I ip_server
 can be the string "localhost" or the empty
-string; this is interpreted as "the machine from which the URL is
+string; this is interpreted as "the machine from which the URI is
 being interpreted".
 If the path is to a directory, the viewer should display the
 directory's contents with links to each containee;
 not all viewers currently do this.
-KDE supports generated files through the URL <file:/cgi-bin>.
+KDE supports generated files through the URI <file:/cgi-bin>.
 If the given file isn't found, browser writers may want to try to expand
 the filename via filename globbing
 (see
@@ -363,8 +366,8 @@ See
 .UR http://www.ietf.org\:/rfc\:/rfc2255.txt
 RFC\ 2255
 .UE
-for more information on the LDAP URL scheme.
-The components of this URL are:
+for more information on the LDAP URI scheme.
+The components of this URI are:
 .IP hostport 12
 the LDAP server to query, written as a hostname optionally followed by
 a colon and the port number.
@@ -509,8 +512,8 @@ A URI is always shown in its "escaped" form.
 Unreserved characters can be escaped without changing the semantics
 of the URI, but this should not be done unless the URI is being used
 in a context that does not allow the unescaped character to appear.
-For example, "%7e" is sometimes used instead of "\(ti" in an HTTP URL
-path, but the two are equivalent for an HTTP URL.
+For example, "%7e" is sometimes used instead of "\(ti" in an HTTP URI
+path, but the two are equivalent for an HTTP URI.
 .PP
 For URIs which must handle characters outside the US ASCII character set,
 the HTML 4.01 specification (section B.2) and
@@ -556,7 +559,7 @@ to have a prefix of "ftp://").
 Many client implementations heuristically resolve these references.
 Such heuristics may
 change over time, particularly when new schemes are introduced.
-Since an abbreviated URI has the same syntax as a relative URL path,
+Since an abbreviated URI has the same syntax as a relative URI path,
 abbreviated URI references cannot be used where relative URIs are
 permitted, and can be used only when there is no defined base
 (such as in dialog boxes).
@@ -578,7 +581,7 @@ fine and in fact encouraged.
 .PP
 Technically the fragment isn't part of the URI.
 .PP
-For information on how to embed URIs (including URLs) in a data format,
+For information on how to embed URIs in a data format,
 see documentation on that format.
 HTML uses the format <A HREF="\fIuri\fP">
 .I text
@@ -609,32 +612,32 @@ version of this man page will describe the converged result.
 Efforts to aid this convergence are encouraged.
 .SS Security
 A URI does not in itself pose a security threat.
-There is no general guarantee that a URL, which at one time
-located a given resource, will continue to do so.
-Nor is there any
-guarantee that a URL will not locate a different resource at some
-later point in time; such a guarantee can be
-obtained only from the person(s) controlling that namespace and the
-resource in question.
-.PP
-It is sometimes possible to construct a URL such that an attempt to
-perform a seemingly harmless operation, such as the
-retrieval of an entity associated with the resource, will in fact
-cause a possibly damaging remote operation to occur.
-The unsafe URL
-is typically constructed by specifying a port number other than that
+There is no general guarantee that a URI,
+which at one time located a given resource,
+will continue to do so.
+Nor is there any guarantee that a URI
+will not locate a different resource at some later point in time;
+such a guarantee can be obtained only from
+the person(s) controlling that namespace and the resource in question.
+.PP
+It is sometimes possible to construct a URI such that
+an attempt to perform a seemingly harmless operation,
+such as the retrieval of an entity associated with the resource,
+will in fact cause a possibly damaging remote operation to occur.
+The unsafe URI is typically constructed
+by specifying a port number other than that
 reserved for the network protocol in question.
 The client unwittingly contacts a site that is in fact
 running a different protocol.
-The content of the URL contains instructions that, when
-interpreted according to this other protocol, cause an unexpected
-operation.
-An example has been the use of a gopher URL to cause an
-unintended or impersonating message to be sent via a SMTP server.
-.PP
-Caution should be used when using any URL that specifies a port
-number other than the default for the protocol, especially when it is
-a number within the reserved space.
+The content of the URI contains instructions that,
+when interpreted according to this other protocol,
+cause an unexpected operation.
+An example has been the use of a gopher URI to cause
+an unintended or impersonating message to be sent via a SMTP server.
+.PP
+Caution should be used when using any URI that specifies
+a port number other than the default for the protocol,
+especially when it is a number within the reserved space.
 .PP
 Care should be taken when a URI contains escaped delimiters for a
 given protocol (for example, CR and LF characters for telnet
-- 
2.30.2

