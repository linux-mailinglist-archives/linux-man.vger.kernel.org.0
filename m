Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73A5531A41A
	for <lists+linux-man@lfdr.de>; Fri, 12 Feb 2021 18:58:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230240AbhBLR5D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Feb 2021 12:57:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbhBLR5B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Feb 2021 12:57:01 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B22AC0613D6
        for <linux-man@vger.kernel.org>; Fri, 12 Feb 2021 09:56:22 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id l17so405461wmq.2
        for <linux-man@vger.kernel.org>; Fri, 12 Feb 2021 09:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=U7CMcHkHqUdOew8V9XYLBWA/DjI0sbwSLTf04BJTh7g=;
        b=tUU3Ch7ZmmVc6ymUbWxKoWzbnSu5aFDH4vmMOXRHy1p/nNV/IAMf6O0Vv9EvUZQvHw
         zSEpvBQSHlR8IyYnaMbRVZKPLRQRr+gpNz++rzukq5poDAN0K1dNVoK0Cfft0tUSGrPF
         KDX+5f/Oq54H/Hwes0Enif5OEZH87bKpnk8aytMANnofj1WfK1wyu7uLZgw9auXV5cVD
         uR7BLpnLJ5tDvase5iWoo50/IEE1uLkEvpQRHK5lRN6Q/EdGLUjpvYWn6QZh5pnv9GFy
         3HhfHMGt9loJ9cRUTHBNI0URoLxjgsc6fzLYOeZOjDPPH+PzxQeKZyl59yL7S4W/YDya
         0gaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=U7CMcHkHqUdOew8V9XYLBWA/DjI0sbwSLTf04BJTh7g=;
        b=m+Vo1Q7ykMTLROFg1L49awmwcZhQMKd0txYW8xPjb77qJ8XzbVbOWoyB1MLAqkWdy4
         5pkQTZE1NVLvvHFlR+FmVmz0T6KW72XySXJHocXsJpEhP0RQwIdiSiNLc3VhW++ygXJz
         MfOAMKE8oQw6y4dVlmHuepylTklvJGScnwuVR6n89DIw2epZ5Rf8agN7jOkzJUIkkGT1
         9sXm0nLTX7lSdeS4csJF/3OqOqy4khs3+1PL3UTvWalK9eE8hFYHrgJwNHzGHbOWrIh0
         97TfawMOtD/ArOiPTSRBgu68Qad/YjLh12Xm7PLGkNbOKxKaiJ1yyFx+ncrm73j7/OYd
         WVkw==
X-Gm-Message-State: AOAM532lY6DgFfw/WJsqiEVnv3syrhrmA90hnGR7QDuzgFjsfaszN7Wr
        1qGtMuvt8UmpM2zakARwcq452kelOVU=
X-Google-Smtp-Source: ABdhPJwLy2qQpuV+moef5tNkImk2oXXF3RngCsUryE9UUnFh/oUJQXmV6Jqa+6E7QseL/f4znSmLcg==
X-Received: by 2002:a1c:2b05:: with SMTP id r5mr3707580wmr.179.1613152580848;
        Fri, 12 Feb 2021 09:56:20 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id 35sm11938397wrn.42.2021.02.12.09.56.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Feb 2021 09:56:20 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: man2: SYNOPSIS: prototype fixes
Message-ID: <576dc286-a538-ff1d-92d6-58829d8ce8d6@gmail.com>
Date:   Fri, 12 Feb 2021 18:56:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I fixed all of the man2 prototypes to use 'restrict', and also fixed
those with incorrect types and missing 'const'.

There are quite a few commits (see below).  How would you prefer it?  A
patch set with all of them?  Separate patches for each of them?  A patch
set for restrict, and the rest separately?  I could reorder them too.
Right now they are as I wrote them (alphabetical order).

BTW, it was quite easy and fast thanks to the consistency fixes in the
SYNOPSIS :-)

Commit list:

[[
* b55125c38 - Fri, 12 Feb 2021 18:28:46 +0100 (11 minutes ago) (HEAD ->
devel)
|           vmsplice.2: SYNOPSIS: Fix prototype parameter type -
Alejandro Colomar
* 34d9dd72b - Fri, 12 Feb 2021 17:53:17 +0100 (46 minutes ago)
|           tkill.2: SYNOPSIS: Fix prototype parameter types - Alejandro
Colomar
* 4e42b38c5 - Fri, 12 Feb 2021 17:45:38 +0100 (54 minutes ago)
|           timer_settime.2: SYNOPSIS: Use 'restrict' in prototypes -
Alejandro Colomar
* 51e62f8b2 - Fri, 12 Feb 2021 17:42:52 +0100 (57 minutes ago)
|           timer_create.2: SYNOPSIS: Use 'restrict' in prototypes -
Alejandro Colomar
* 3e571e917 - Fri, 12 Feb 2021 17:24:52 +0100 (75 minutes ago)
|           stat.2: SYNOPSIS: Use 'restrict' in prototypes - Alejandro
Colomar
* f3c8d2b4d - Fri, 12 Feb 2021 17:12:37 +0100 (87 minutes ago)
|           statx.2: SYNOPSIS: Use 'restrict' in prototypes - Alejandro
Colomar
* bfbd4b4d7 - Fri, 12 Feb 2021 17:08:44 +0100 (2 hours ago)
|           spu_run.2: SYNOPSIS: Fix prototype parameter types -
Alejandro Colomar
* 1fb014a27 - Fri, 12 Feb 2021 17:02:36 +0100 (2 hours ago)
|           spu_create.2: SYNOPSIS: Fix prototype parameter type -
Alejandro Colomar
* ae642106c - Fri, 12 Feb 2021 16:56:16 +0100 (2 hours ago)
|           splice.2: Use 'off64_t' instead of 'loff_t' - Alejandro Colomar
* 2078af674 - Fri, 12 Feb 2021 16:46:46 +0100 (2 hours ago)
|           socketcall.2: Add note about missing glibc wrapper -
Alejandro Colomar
* 01b4bfbd5 - Fri, 12 Feb 2021 16:39:13 +0100 (2 hours ago)
|           sigwaitinfo.2: SYNOPSIS: Use 'restrict' in prototypes -
Alejandro Colomar
* bb7808087 - Fri, 12 Feb 2021 16:30:47 +0100 (2 hours ago)
|           sigprocmask.2: SYNOPSIS: Use 'restrict' in prototypes -
Alejandro Colomar
* 48d241968 - Fri, 12 Feb 2021 16:01:17 +0100 (3 hours ago)
|           sigaltstack.2: SYNOPSIS: Use 'restrict' in prototypes -
Alejandro Colomar
* 36428c48c - Fri, 12 Feb 2021 15:52:37 +0100 (3 hours ago)
|           sigaction.2: SYNOPSIS: Use 'restrict' in prototypes -
Alejandro Colomar
* 16b7a5f97 - Fri, 12 Feb 2021 15:04:40 +0100 (4 hours ago)
|           setfsgid.2: tfix - Alejandro Colomar
* af7affdd2 - Fri, 12 Feb 2021 14:48:43 +0100 (4 hours ago)
|           select.2: SYNOPSIS: Use 'restrict' in prototypes - Alejandro
Colomar
* 1e336e93b - Fri, 12 Feb 2021 14:31:38 +0100 (4 hours ago)
|           sched_setattr.2: Add note about missing glibc wrappers -
Alejandro Colomar
* f2602e04a - Fri, 12 Feb 2021 13:04:24 +0100 (6 hours ago)
|           s390_pci_mmio_write.2: SYNOPSIS: Add 'const' qualifier -
Alejandro Colomar
* 3423c9e83 - Fri, 12 Feb 2021 12:42:40 +0100 (6 hours ago)
|           recv.2: SYNOPSIS: Use 'restrict' in prototypes - Alejandro
Colomar
* 138c3ac1c - Fri, 12 Feb 2021 12:20:21 +0100 (6 hours ago)
|           readlink.2: SYNOPSIS: Use 'restrict' in prototypes -
Alejandro Colomar

]]

If you ever need to do something like this again, the following commands
may be useful (I'll need them for section 3 soon):

For reading the man_pages SYNOPSIS:

.../linux/man-pages$ man_section man2 SYNOPSIS |less;

For reading the glibc prototypes:

.../gnu/glibc$ man_lsfunc ../../linux/man-pages/man2 \
  |while read -r syscall; do
          echo "=============================  ${syscall}";
          grep_glibc_prototype ${syscall};
  done \
  |sed -e 's/\bextern //' -e 's/\b_*//g' \
  |less;

For reading the kernel prototypes:

.../linux/linux$ man_lsfunc ../man-pages/man2/ \
  |while read -r syscall; do
          echo "=============================  ${syscall}";
          grep_syscall ${syscall};
  done \
  |less;


......

Functions (I've improved these a bit over time):

function grep_syscall()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
		return ${EX_USAGE};
	fi

	find * -type f \
	|grep '\.c$' \
	|sort -V \
	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';

	find * -type f \
	|grep '\.[ch]$' \
	|sort -V \
	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
}

function man_section()
{
	if ! [ -v 2 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
		return ${EX_USAGE}
	fi

	find "${1}" -type f \
	|xargs grep -l "\.SH ${2}" \
	|sort -V \
	|while read -r manpage; do
		<${manpage} \
		sed -n \
			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
			-e "/^\.SH ${2}/p" \
			-e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
		|man -P cat -l - 2>/dev/null;
	done;
}

function man_lsfunc()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
		return ${EX_USAGE};
	fi

	find "${1}" -type f \
	|xargs grep -l "\.SH SYNOPSIS" \
	|sort -V \
	|while read -r manpage; do
		<${manpage} \
		sed -n \
			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
			-e "/^\.SH SYNOPSIS/p" \
			-e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
		|sed \
			-e '/Feature/,$d' \
			-e '/{/,/}/d' \
		|man -P cat -l - 2>/dev/null;
	done \
	|sed -n "/^SYNOPSIS/,/^\w/p" \
	|grep '^       \w' \
	|grep -v ':' \
	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
	|grep '^\w' \
	|uniq;
}

function grep_glibc_prototype()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <func>";
		return ${EX_USAGE};
	fi

	find * -type f \
	|grep '\.h$' \
	|sort -V \
	|xargs pcregrep -Mn \
	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
}


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
