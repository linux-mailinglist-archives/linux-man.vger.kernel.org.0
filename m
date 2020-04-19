Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D1B51AF813
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 08:53:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726381AbgDSGxj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 02:53:39 -0400
Received: from luckmann.name ([213.239.213.133]:48637 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726325AbgDSGxj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 02:53:39 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56203.000000005E9BF443.00007F59; Sun, 19 Apr 2020 08:48:35 +0200
Date:   Sun, 19 Apr 2020 08:48:35 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: utmp(5): Missing closing bracket
Message-ID: <20200419064835.GA32586@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Dear manpages maintainers.
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including manpages) as
well for a large variety of target languages.

During their work translators notice different possible issues in the
original (english) man pages. Sometiems this is a straightforward
typo, sometimes a hard to read sentence, sometimes this is a convention
not held up and sometimes we simply do not understand the original.

We use several distributions as sources and update regularly (at
least every 2 month). This means we are fairly recent (some
distributions like archlinux also update frequently) but might miss
the latest upstream version once a while, so the error might be
already fixed. We apologize and ask you to close the issue immediately
if this should be the case, but given the huge volume of projects and
the very limited number of volunteers we are not able to double check
each and every issue.

Secondly we translators see the manpages in the neutral po format,
i.e. converted and harmonized, but not the original source (be it man,
groff, xml or other). So we cannot provide a true patch (where
possible), but only an approximation which you need to translate into
your source format.

Finally the issues I'm reporting have accumulated over time and are
not always discovered by me, so sometimes my description of the
problem my be a bit limited - do not hesitate to ask so we can clarify
them.

I'm now reporting the errors for your project. As requested, each
issue is sent in an unique mail for easier tracking on your side. If
future reports should use another channel, please let me know.

**

Mining closing bracket at init(1), i.e. init (1 → init(1)

"struct utmp {\n"
"    short   ut_type;              /* Type of record */\n"
"    pid_t   ut_pid;               /* PID of login process */\n"
"    char    ut_line[UT_LINESIZE]; /* Device name of tty - \"/dev/\" */\n"
"    char    ut_id[4];             /* Terminal name suffix,\n"
"                                     or inittab(5) ID */\n"
"    char    ut_user[UT_NAMESIZE]; /* Username */\n"
"    char    ut_host[UT_HOSTSIZE]; /* Hostname for remote login, or\n"
"                                     kernel version for run-level\n"
"                                     messages */\n"
"    struct  exit_status ut_exit;  /* Exit status of a process\n"
"                                     marked as DEAD_PROCESS; not\n"
"                                     used by Linux init (1 */\n"
"    /* The ut_session and ut_tv fields must be the same size when\n"
"       compiled 32- and 64-bit.  This allows data files and shared\n"
"       memory to be shared between 32- and 64-bit applications. */\n"
"#if __WORDSIZE == 64 && defined __WORDSIZE_COMPAT32\n"
"    int32_t ut_session;           /* Session ID (B<getsid>(2)),\n"
"                                     used for windowing */\n"
"    struct {\n"
"        int32_t tv_sec;           /* Seconds */\n"
"        int32_t tv_usec;          /* Microseconds */\n"
"    } ut_tv;                      /* Time entry was made */\n"
"#else\n"
"     long   ut_session;           /* Session ID */\n"
"     struct timeval ut_tv;        /* Time entry was made */\n"
"#endif\n"


-- 
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software libre: http://www.ffii.de/
