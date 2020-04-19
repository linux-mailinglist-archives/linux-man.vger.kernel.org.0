Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 408B81AF7B5
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 08:53:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726039AbgDSGxB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 02:53:01 -0400
Received: from luckmann.name ([213.239.213.133]:39703 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726025AbgDSGxB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 02:53:01 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 19 Apr 2020 02:52:53 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5612D.000000005E9BF41E.00007714; Sun, 19 Apr 2020 08:47:58 +0200
Date:   Sun, 19 Apr 2020 08:47:58 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: execve(2): typo
Message-ID: <20200419064758.GA30469@Debian-50-lenny-64-minimal>
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

set-group_ID → set-group-ID

"By default, file descriptors remain open across an B<execve>().  File "
"descriptors that are marked close-on-exec are closed; see the description of "
"B<FD_CLOEXEC> in B<fcntl>(2).  (If a file descriptor is closed, this will "
"cause the release of all record locks obtained on the underlying file by "
"this process.  See B<fcntl>(2)  for details.)  POSIX.1 says that if file "
"descriptors 0, 1, and 2 would otherwise be closed after a successful "
"B<execve>(), and the process would gain privilege because the set-user-ID or "
"set-group_ID mode bit was set on the executed file, then the system may open "
"an unspecified file for each of these file descriptors.  As a general "
"principle, no portable program, whether privileged or not, can assume that "
"these three file descriptors will remain closed across an B<execve>()."

-- 
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software libre: http://www.ffii.de/
