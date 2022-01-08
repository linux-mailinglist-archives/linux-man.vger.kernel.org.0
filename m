Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DB6C48834D
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 12:50:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231636AbiAHLum convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Sat, 8 Jan 2022 06:50:42 -0500
Received: from lixid.tarent.de ([193.107.123.118]:45893 "EHLO mail.lixid.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233445AbiAHLum (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 8 Jan 2022 06:50:42 -0500
X-Greylist: delayed 438 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 06:50:41 EST
Received: from localhost (localhost [127.0.0.1])
        by mail.lixid.net (MTA) with ESMTP id D7E8114111B;
        Sat,  8 Jan 2022 12:43:21 +0100 (CET)
Received: from mail.lixid.net ([127.0.0.1])
        by localhost (mail.lixid.net [127.0.0.1]) (MFA, port 10024) with LMTP
        id EVrcMO9gqzi1; Sat,  8 Jan 2022 12:43:16 +0100 (CET)
Received: from tglase-nb.lan.tarent.de (vpn-172-34-0-14.dynamic.tarent.de [172.34.0.14])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.lixid.net (MTA) with ESMTPS id DD1181410A6;
        Sat,  8 Jan 2022 12:43:15 +0100 (CET)
Received: by tglase-nb.lan.tarent.de (Postfix, from userid 1000)
        id 49F6F1CE19B; Sat,  8 Jan 2022 12:43:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
        by tglase-nb.lan.tarent.de (Postfix) with ESMTP id 46BDF1C327D;
        Sat,  8 Jan 2022 12:43:15 +0100 (CET)
Date:   Sat, 8 Jan 2022 12:43:15 +0100 (CET)
From:   mirabilos <tg@debian.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
cc:     Debian Ecosystem Init Diversity Team 
        <debian-init-diversity@chiark.greenend.org.uk>,
        Ian Jackson <iwj@debian.org>, Benda Xu <orv@debian.org>,
        Adam Borowski <kilobyte@debian.org>,
        "Vincenzo (KatolaZ) Nicosia" <katolaz@freaknet.org>,
        Mark Hindley <leepen@debian.org>,
        Mark Hindley <leepen@debian.org>,
        "Devuan (Debian is Not GNOME)" <dng@lists.dyne.org>,
        Randy Westlund <rwestlun@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        help make <help-make@gnu.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: Re: make-rc: A parallel (as in make(1)) alternative to sysv-rc
In-Reply-To: <3a34ccac-1d2b-7f5a-f0fa-6ba22dd1680f@gmail.com>
Message-ID: <a43e9876-fd68-7e64-d916-3e67bfca71f@tarent.de>
References: <3a34ccac-1d2b-7f5a-f0fa-6ba22dd1680f@gmail.com>
Content-Language: de-DE-1901
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 5 Jan 2022, Alejandro Colomar (man-pages) wrote:

> Most of you I added you to this email because I found you on the maintainers
> list for the Debian sysv-rc package (now dead for a long time).
> I also CCd Devuan, since I hope you'll be interested in this little project of
> mine.

Not really. I invested a significant amount of effort to revert sysv-rc
to sequential booting because the parallel one invites huge amounts of
trouble, bugs, and breaks any hope of debugging that.

> So, last friday (yes, that's New Year's Eve), I was reading something, and got
> this idea... the main valid claim for systemd is that it blows away
> competition in terms of performance?  Full parallelization?  Knows about

Bah. How often do you boot a unix?

And in practice, shitdown times are MUCH more important than boot times.
Need to quickly turn off the laptop because the battery is dying or the
train is arriving or the cat’s vomited all over something. Enter those
90-second delays (often multiple) of shitstemd ☹ sysvinit/sysv-rc shuts
down in good time.

> $ ls -lh $(realpath $(which systemd make bash sh 2>/dev/null))

Hey! mksh is there, too! (And /bin/lksh is even linked statically, which
is another performance benefit.)

> So, if the problem is that the rc scripts don't run parallel and don't know

No, the problem is that they do, by default, even in sysv-rc.

bye,
//mirabilos
-- 
«MyISAM tables -will- get corrupted eventually. This is a fact of life. »
“mysql is about as much database as ms access” – “MSSQL at least descends
from a database” “it's a rebranded SyBase” “MySQL however was born from a
flatfile and went downhill from there” – “at least jetDB doesn’t claim to
be a database”	(#nosec)    ‣‣‣ Please let MySQL and MariaDB finally die!
