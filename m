Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40CF31AF7DE
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 08:53:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726207AbgDSGxS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 02:53:18 -0400
Received: from luckmann.name ([213.239.213.133]:39703 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726195AbgDSGxR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 02:53:17 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 19 Apr 2020 02:52:53 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5618D.000000005E9BF42E.00007A83; Sun, 19 Apr 2020 08:48:14 +0200
Date:   Sun, 19 Apr 2020 08:48:14 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: personality(2): Missing article
Message-ID: <20200419064814.GA31348@Debian-50-lenny-64-minimal>
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

is value → is a value

"A list of the available execution domains can be found in I<E<lt>sys/"
"personality.hE<gt>>.  The execution domain is a 32-bit value in which the "
"top three bytes are set aside for flags that cause the kernel to modify the "
"behavior of certain system calls so as to emulate historical or "
"architectural quirks.  The least significant byte is value defining the "
"personality the kernel should assume.  The flag values are as follows:"

-- 
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software libre: http://www.ffii.de/
