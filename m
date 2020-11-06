Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49A5A2A92E7
	for <lists+linux-man@lfdr.de>; Fri,  6 Nov 2020 10:39:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726321AbgKFJjL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Nov 2020 04:39:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725868AbgKFJjL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Nov 2020 04:39:11 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC9D1C0613CF
        for <linux-man@vger.kernel.org>; Fri,  6 Nov 2020 01:39:10 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id d142so707824wmd.4
        for <linux-man@vger.kernel.org>; Fri, 06 Nov 2020 01:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=58sr0FGm6KfvW0TkrLxb9nQsVHefL7ViABsKiOT0wKE=;
        b=YbB1OtquATkwziFgr39FR/0RRjWRz6FsKOFqy5Yxq63QiJ/OnIXmONjKCQu5tQm0m3
         Jph0jUlvHTSMe5geDJNOMcYxX5oNWhECXz4yGpvRVm+9o+CgMPoCZxBmkTWobAyEZn0j
         RDdWtfVzBHp/VcJ1LYNfbWUSMQBU4SgB6Jr9wsHg6vbH319tVJusR5VgRa40U6WPbePw
         JkcIZitIz7XksF4GQRrcDLKaw3skbmZ6Z4D8hIZVTKfTHj7jYESd3kXT0F5WiKs5foRG
         18v1wLzx4HReTiEBW9O3YuSqnGFRIAicXLTkimyWmrpNvDxu05frNPQFKefIwLDsvU+/
         4HbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=58sr0FGm6KfvW0TkrLxb9nQsVHefL7ViABsKiOT0wKE=;
        b=mgfxZVEZSQvuhde+K6DCi171QQ+XEny/JvAvuk2dCReiJv13FfWiiXUqvwAk2aVS9Y
         ZKAmf0LgaEAV65u6/bNda0ZXQmoItqUu3RRljSmNztx3xWyoYlzmnQNF7GaYWMnSB3hl
         wfwJMtDFl9dG+I+O1tf8qZ/TSJ++lquyMIfMsVK7v9aYgpu3y/X0B7btVZjM0X/0OICi
         GdXiyRrs0GYgyAWazDeNbzoPGxM0RyA1vSQjkPgslnuvHloaCuPNlKjZBeQ/6IzdLWaB
         4tgFY1INxaWqjjuMV/iWlTmGrXYUtLeZg6uBNxZSpZ9Y0Ot+5g3X7qYaayZt4ba8hTed
         LsnQ==
X-Gm-Message-State: AOAM531zebfm8WrdGDRCLkUXJopBRjvcT3c6RTotksTU7EPMaSE2pmFO
        HY1HRO8ynL+XRMSD87YDjuE=
X-Google-Smtp-Source: ABdhPJwLl0yUJz1j8v2SJwjPf2C3fz2+vi195VJARchHz5nKeglJ4PUjBfLP1AiCrPgSCKvdiLokrw==
X-Received: by 2002:a1c:a402:: with SMTP id n2mr1455760wme.160.1604655549064;
        Fri, 06 Nov 2020 01:39:09 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s12sm1392487wmc.6.2020.11.06.01.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 01:39:08 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: Format inline code
Date:   Fri,  6 Nov 2020 10:38:46 +0100
Message-Id: <20201106093845.12897-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

This is not a patch.
But I sent you a full page to better see what we're talking about.

Here are, as subsections of EXAMPLES,
A (.RS/.RE after first .TP paragraph) and
B (.RS/.RE Always)
from last email.

As for using .RS/.RE for single paragraphs,
we could do as in C:
{} for multi-line ifs/loops -> .RS/.RE for multiple paragraphs.
just indent for single-line ifs/loops -> .IP for single paragraphs.

Your thoughts?

Thanks,

Alex

 man7/test_man_format.7 | 132 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 man7/test_man_format.7

diff --git a/man7/test_man_format.7 b/man7/test_man_format.7
new file mode 100644
index 000000000..6fc7ae974
--- /dev/null
+++ b/man7/test_man_format.7
@@ -0,0 +1,132 @@
+.\" %%%LICENSE_START(VERBATIM)
+.\" Do whatever the heck you want with it.
+.\" %%%LICENSE_END
+.\"
+.\"
+.TH TEST_MAN_FORMAT 7 2020-11-06 "Linux" "Linux Programmer's Manual"
+.SH NAME
+test_man_format \- playground page to test formatting
+.SH DESCRIPTION
+Please, modify the source of this page to see the output changes.
+.SH EXAMPLES
+.SS .RS/.RE after first .TP paragraph
+.TP
+HEADW
+Lorem ipsum dolor sit amet, consectetur adipiscing elit,
+sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
+Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
+nisi ut aliquip ex ea commodo consequat.
+.RS
+.PP
+Augue interdum velit euismod in pellentesque.
+Tristique senectus et netus et malesuada fames ac turpis egestas.
+Gravida arcu ac tortor dignissim convallis.
+.PP
+.RS +4n
+.EX
+int
+main(int argc, char *argv[])
+{
+     return 0;
+}
+.EE
+.RE
+.RE
+.TP
+HEADW
+Lorem ipsum dolor sit amet, consectetur adipiscing elit,
+sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
+Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
+nisi ut aliquip ex ea commodo consequat.
+.RS
+.PP
+Augue interdum velit euismod in pellentesque.
+Tristique senectus et netus et malesuada fames ac turpis egestas.
+Gravida arcu ac tortor dignissim convallis.
+.IP +4n
+.EX
+int
+main(int argc, char *argv[])
+{
+     return 0;
+}
+.EE
+.RE
+.TP
+HEADW
+Lorem ipsum dolor sit amet, consectetur adipiscing elit,
+sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
+Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
+nisi ut aliquip ex ea commodo consequat.
+.IP
+.\" We could use .RS+.PP/.RE here, but as an analogy to C's one-line if's,
+.\" we could also use .IP for simplicity when there is only one
+.\" paragraph affected.
+Augue interdum velit euismod in pellentesque.
+Tristique senectus et netus et malesuada fames ac turpis egestas.
+Gravida arcu ac tortor dignissim convallis.
+.TP
+HEADW
+Lorem ipsum dolor sit amet, consectetur adipiscing elit,
+sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
+Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
+nisi ut aliquip ex ea commodo consequat.
+.SS .RS/.RE Always
+.TP
+HEADW
+.RS
+Lorem ipsum dolor sit amet, consectetur adipiscing elit,
+sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
+Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
+nisi ut aliquip ex ea commodo consequat.
+.PP
+Augue interdum velit euismod in pellentesque.
+Tristique senectus et netus et malesuada fames ac turpis egestas.
+Gravida arcu ac tortor dignissim convallis.
+.PP
+.RS +4n
+.EX
+int
+main(int argc, char *argv[])
+{
+     return 0;
+}
+.EE
+.RE
+.RE
+.TP
+HEADW
+.RS
+Lorem ipsum dolor sit amet, consectetur adipiscing elit,
+sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
+Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
+nisi ut aliquip ex ea commodo consequat.
+.PP
+Augue interdum velit euismod in pellentesque.
+Tristique senectus et netus et malesuada fames ac turpis egestas.
+Gravida arcu ac tortor dignissim convallis.
+.IP 4
+.EX
+int
+main(int argc, char *argv[])
+{
+     return 0;
+}
+.EE
+.RE
+.TP
+HEADW
+.RS
+Lorem ipsum dolor sit amet, consectetur adipiscing elit,
+sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
+Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
+nisi ut aliquip ex ea commodo consequat.
+.RE
+.SH SEE ALSO
+.BR man (1),
+.BR man2html (1),
+.BR groff (7),
+.BR groff_man (7),
+.BR man (7),
+.BR man-pages (7),
+.BR mdoc (7)
-- 
2.28.0

