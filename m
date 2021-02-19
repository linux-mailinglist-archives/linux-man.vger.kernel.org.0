Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 897C031FB06
	for <lists+linux-man@lfdr.de>; Fri, 19 Feb 2021 15:37:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231217AbhBSOhE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 09:37:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231215AbhBSOf5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 09:35:57 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B2B0C061756
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 06:35:17 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id w4so7260371wmi.4
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 06:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gsXDfeosrJy3ILF4XXNqzKSW/TcjdH6YGXBrhvNy80o=;
        b=jkV9IqIJY6h3h1qSysOD7ouwfAfVqHlSvFTGTrcYPYdCDT3FL9hjESxK64caAJdznu
         W1NyVK+mi+7bUuf+LCVoy9kHaIlmuxvqZcLuJIxl5/9z4vQUUROdz1D//9Mwb+wGF/gM
         807dl/YPX+nExj0I0dSYF+U9OmYbgDp3fopwH7DSKu1o8iEpntEyBVnf2JarnVgswxYn
         NQb6e7MEKpmOd7ntA6bUxBHYxO1VxRdhToFb8wdHQRMiNSxIyqJnIyuqlnTEU4Y9bFqz
         C9Yjo4Wg0gJSnbt0HWkULX8zWHfZqxdeaB4gt4z/fSDRu9Tkn9GNdwuxFyY9YbyDUuhP
         viuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gsXDfeosrJy3ILF4XXNqzKSW/TcjdH6YGXBrhvNy80o=;
        b=VEydnsC/7vImICjyPAOd762z5j/+YdV34bEw0bc5+ZvVk6Q/inATv51TfrjILZ6P1X
         OZSStITODFHSSWh8s1XNDd46fH3EdHNvE8MTGk5X2Dna488RYUPsD8sqwnjCKn1QB4/E
         ZNSchad+vZ8PO7yb0JSjq+KDzVg/oEBMsMc7qhUVwBhYZtJ3hr++RaBVkkjUOhcjUif1
         kBJ/X4HDy2XrmhiYIM9qdR1LjlmlCsIgSDU8Qwg+W9J65zHOAuyMVc1mM79u7trS22FQ
         PoNDl+Zx2PV36+66QAMx8eG1I3oz3bdIIlJImHOdypRTqQ/6Qkjkv+3+9eB7uuxtx6Ja
         dBJw==
X-Gm-Message-State: AOAM533CBewc8KgdAizjMG6q+der7QpML0W9E/AGykKDmk1dv33t2KeT
        y3V5IcjfDfHm49FhblA9zPg=
X-Google-Smtp-Source: ABdhPJxXa5zY6PZpnadi5oDgWSIbzALoEsGdltjAeoQsxKT0GeF3lTKuEH7NrkzepgECwB55jlI8KQ==
X-Received: by 2002:a1c:b741:: with SMTP id h62mr407498wmf.85.1613745315767;
        Fri, 19 Feb 2021 06:35:15 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id r7sm14601498wre.25.2021.02.19.06.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Feb 2021 06:35:15 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Walter Harms <wharms@bfs.de>
Subject: [PATCH v9] scripts/bash_aliases: Add useful functions
Date:   Fri, 19 Feb 2021 15:32:23 +0100
Message-Id: <20210219143221.108935-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210215131522.450666-11-alx.manpages@gmail.com>
References: <20210215131522.450666-11-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

That file should be sourced (.) from 'bashrc' (or 'bash_aliases').

It contains functions that are useful for the maintenance of this
project.

- grep_syscall()
- grep_syscall_def()
- man_section()
- man_lsfunc()
- pdfman()
- grep_glibc_prototype()

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v2:
	- Reword license to adequate it for many functions instead
	  of a single program.
	- Add a trailing ';' for consistency.
v3:
	- Resend to avoid confusion:  I forgot to use [PATCH v2]!
v4:
	- grep_glibc_prototype(): Fix some corner cases where
	  a function invocation was printed.
v5:
	- grep_glibc_prototype(): Fix some corner cases where
	  a function prototype with many attributes wasn't printed.
v6:
	- man_lsfunc(): Allow listing more than one dir.
	  Example: $ man_lsfunc man[23];
v7:
	- grep_glibc_prototype(): Fix some corner cases where
	  a function invocation was printed.
v8:
	- grep_glibc_prototype():
		- Print attributes before the prototype too.
		  (AFAICS, there are none; but just in case...)
		- Accept C2x attributes (glibc doesn't use them yet,
		  but it doesn't hurt to accept them).
v9:
	- grep_glibc_prototype(): Accept namespaced C2x attributes,
	  such as [[gnu::nonnull]].

---
 scripts/bash_aliases | 171 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 171 insertions(+)
 create mode 100644 scripts/bash_aliases

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
new file mode 100644
index 000000000..5e4b424af
--- /dev/null
+++ b/scripts/bash_aliases
@@ -0,0 +1,171 @@
+# SPDX-License-Identifier: GPL-2.0-only
+########################################################################
+#
+# (C) Copyright 2021, Alejandro Colomar
+# These functions are free software; you can redistribute them and/or
+# modify them under the terms of the GNU General Public License
+# as published by the Free Software Foundation; version 2.
+#
+# These functions are distributed in the hope that they will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details
+# (http://www.gnu.org/licenses/gpl-2.0.html).
+#
+########################################################################
+
+########################################################################
+#	Exit status
+
+EX_OK=0;
+EX_USAGE=64;
+
+########################################################################
+#	Linux kernel
+
+#  grep_syscall()  finds the prototype of a syscall in the kernel sources,
+# printing the filename, line number, and the prototype.
+# It should be run from the root of the linux kernel source tree.
+# Usage example:  .../linux$ grep_syscall openat2;
+
+function grep_syscall()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
+		return ${EX_USAGE};
+	fi
+
+	find * -type f \
+	|grep '\.c$' \
+	|sort -V \
+	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
+	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
+
+	find * -type f \
+	|grep '\.[ch]$' \
+	|sort -V \
+	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
+	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
+
+#  grep_syscall_def()  finds the definition of a syscall in the kernel sources,
+# printing the filename, line number, and the function definition.
+# It should be run from the root of the linux kernel source tree.
+# Usage example:  .../linux$ grep_syscall_def openat2;
+
+function grep_syscall_def()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
+		return ${EX_USAGE};
+	fi
+
+	find * -type f \
+	|grep '\.c$' \
+	|sort -V \
+	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?^}" \
+	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
+
+########################################################################
+#	Linux man-pages
+
+#  man_section()  prints a specific manual page section (DESCRIPTION, SYNOPSIS,
+# ...) of all manual pages in a directory (or in a single manual page file).
+# Usage example:  .../man-pages$ man_section man2 SYNOPSIS;
+
+function man_section()
+{
+	if ! [ -v 2 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
+		return ${EX_USAGE};
+	fi
+
+	find "${1}" -type f \
+	|xargs grep -l "\.SH ${2}" \
+	|sort -V \
+	|while read -r manpage; do
+		<${manpage} \
+		sed -n \
+			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+			-e "/^\.SH ${2}/p" \
+			-e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
+		|man -P cat -l - 2>/dev/null;
+	done;
+}
+
+#  man_lsfunc()  prints the name of all C functions declared in the SYNOPSIS
+# of all manual pages in a directory (or in a single manual page file).
+# Each name is printed in a separate line
+# Usage example:  .../man-pages$ man_lsfunc man2;
+
+function man_lsfunc()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
+		return ${EX_USAGE};
+	fi
+
+	find "${@}" -type f \
+	|xargs grep -l "\.SH SYNOPSIS" \
+	|sort -V \
+	|while read -r manpage; do
+		<${manpage} \
+		sed -n \
+			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+			-e "/^\.SH SYNOPSIS/p" \
+			-e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
+		|sed \
+			-e '/Feature/,$d' \
+			-e '/{/,/}/d' \
+		|man -P cat -l - 2>/dev/null;
+	done \
+	|sed -n "/^SYNOPSIS/,/^\w/p" \
+	|grep '^       \w' \
+	|grep -v ':' \
+	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
+	|grep '^\w' \
+	|uniq;
+}
+
+#  pdfman()  reanders a manual page in PDF
+# Usage example:  .../man-pages$ pdfman man2/membarrier.2;
+
+function pdfman()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <man-page.n>";
+		return ${EX_USAGE};
+	fi;
+
+	local tmp="$(mktemp -t "${1##*/}.XXXXXX")";
+
+	<${1} \
+	man -Tps -l - \
+	|ps2pdf - - \
+	>${tmp};
+	xdg-open ${tmp};
+}
+
+########################################################################
+#	Glibc
+
+#  grep_glibc_prototype()  finds a function prototype in the glibc sources,
+# printing the filename, line number, and the prototype.
+# It should be run from the root of the glibc source tree.
+# Usage example:  .../glibc$ grep_glibc_prototype printf;
+
+function grep_glibc_prototype()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <func>";
+		return ${EX_USAGE};
+	fi
+
+	find * -type f \
+	|grep '\.h$' \
+	|sort -V \
+	|xargs pcregrep -Mn \
+	  "(?s)^[\w[][\w\s(,)[:\]]+\s+\**${1}\s*\([\w\s(,)[\]*]+?(...)?\)[\w\s(,)[:\]]*;" \
+	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
-- 
2.30.1.721.g45526154a5

