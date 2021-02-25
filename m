Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BBB7325273
	for <lists+linux-man@lfdr.de>; Thu, 25 Feb 2021 16:30:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231604AbhBYP3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 Feb 2021 10:29:49 -0500
Received: from mx01-sz.bfs.de ([194.94.69.67]:23362 "EHLO mx02-sz.bfs.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230201AbhBYP3r (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 25 Feb 2021 10:29:47 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx02-sz.bfs.de (Postfix) with ESMTPS id 82615206FA;
        Thu, 25 Feb 2021 16:29:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1614266943;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=D7sXH0z8wpTq7cfT3mLHhN2YwuaLoKAJzZAKm49NNoU=;
        b=WbrpxthH7kTeIkqwxWP5yNqLfMIv1aeur1sJiCqNtSXIrESYclAcTMBbgCruCmKX5rPZPl
        sobvw0hfYfoam+gXd8Hzwf7uKaiUhJtnlXTtOumlncmbCV9Q6J8ZtbHMMQ3GDbLWR9zmG/
        u/P8Zz5251sImOQza0nIchWoNcswveLMTadrAUYmZ7E/w+7VtbPJsxkyfzMc56ezWl9Djc
        Ib6DXi0tk2dBzfRJX3dlafbhh/ntAuZKMfq55qnSjPBk7UOjXsUvMN3o1ltM8bgJE6Q05v
        3CW+mxdukl6qIMEvo5LjzSaDLokMzVV4gs6nex4WrV2MjPRQ18aPVjPBviCUgQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Thu, 25 Feb
 2021 16:29:03 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.002; Thu, 25 Feb 2021 16:29:03 +0100
From:   Walter Harms <wharms@bfs.de>
To:     Luis Henriques <lhenriques@suse.de>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: [PATCH] copy_file_range.2: Kernel v5.12 updates
Thread-Topic: [PATCH] copy_file_range.2: Kernel v5.12 updates
Thread-Index: AQHXCsczw6KResjd80Wjm6X/xfQdWKpnaOSAgAEwogCAAGWOSQ==
Date:   Thu, 25 Feb 2021 15:29:02 +0000
Message-ID: <1420fad0d18843b29c8c97919ebcb421@bfs.de>
References: <20210222102456.6692-1-lhenriques@suse.de>
 <20210224142307.7284-1-lhenriques@suse.de>
 <CAOQ4uxi3-+tOgHV_GUnWtJoQXbV5ZS9qDZsLsd9sJxX5Aftyew@mail.gmail.com>,<YDd6EMpvZhHq6ncM@suse.de>
In-Reply-To: <YDd6EMpvZhHq6ncM@suse.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25994.007
x-tm-as-result: No-10--16.765700-5.000000
x-tmase-matchedrid: B12LqqUZIQy2stVKK887Os4EZv+VPcNBPknazlXMVpVYC5LPd7BvbbLs
        vs6J0rHdvElQ/PTL7K7bewiaSAo2kSspnk1mqucYBBmRlS94ZtvYnkbIjaD5nHT+0L2FmGNMJoK
        OQUqn/54IYiyUbJCX+aYXUIHBeNB5Z/Amxtjcg+l+J3gtIe0gAzKEtjy6tQe+O3tmMk8BUiIhlG
        9iTcYtaqNIXC+Evb2DVBBxq+3rCoHi7Mcd7z9bLQGdJZ3Knh6hljgw/8s6b3cHZBaLwEXlKIPcX
        uILVCbavs75gcY5ey50w+1gsvAUe4Ik7jJ4Czwia87CDXaKRVJIwovbX4T40KlTFDGZMPhC/tIZ
        nklOUkjnYp9PN+ItKMoQphqKvRThLHyAB4UBD4H0hv/rD7WVZG4lczE4XkmwBCzD0Dc8iUvXU5/
        rvsc4K8J++jdSAUUkCfD0mnVSbfEoikPnYXaki6o2fOuRT7aaas1wAJHsfyIcwojTLz1sEjLk8G
        2qhCWTDzcc9hL6UiC1QhEk8s7S2K3U5Al7iV4jvbqrzSdPiqplu8AJBkPNMLSoPvJ6PVxVs1KtE
        R6ri6bziAPnRWnvqeDIjV+NRQx7NiAclaSJhbsCOhpLDQSMVX0tCKdnhB581B0Hk1Q1KyLUZxEA
        lFPo846HM5rqDwqtMmFjdO0gyfZI96ifmjHzHPAqrlMj43gwp9pDjFuXzeMiZjaVtG6fyQ==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--16.765700-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25994.007
x-tm-snts-smtp: E1066F379AD83D4F34CC165AF9FAADEEDF18CCF648C02AAB984053A4D97F23822000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.95 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         RCPT_COUNT_TWO(0.00)[2];
         NEURAL_HAM(-0.00)[-1.000];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.95)[86.63%]
X-Spam-Status: No, score=-0.95
Authentication-Results: mx02-sz.bfs.de;
        none
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I would not mention crossfile support in 5.3.
It is more confusing than helping.

If the support works after 5.12 just say it. Nobody will write
a programm an claim "works for 5.3 and >5.12 ".

re,
 wh

________________________________________
Von: Luis Henriques <lhenriques@suse.de>
Gesendet: Donnerstag, 25. Februar 2021 11:21:04
An: Amir Goldstein
Cc: Alejandro Colomar; Michael Kerrisk; Jeff Layton; Steve French; Miklos S=
zeredi; Trond Myklebust; Anna Schumaker; Alexander Viro; Darrick J. Wong; D=
ave Chinner; Greg KH; Nicolas Boichat; Ian Lance Taylor; Luis Lozano; Andre=
as Dilger; Olga Kornievskaia; Christoph Hellwig; ceph-devel; linux-kernel; =
CIFS; samba-technical; linux-fsdevel; Linux NFS Mailing List; linux-man
Betreff: Re: [PATCH] copy_file_range.2: Kernel v5.12 updates

On Wed, Feb 24, 2021 at 06:10:45PM +0200, Amir Goldstein wrote:
> On Wed, Feb 24, 2021 at 4:22 PM Luis Henriques <lhenriques@suse.de> wrote=
:
> >
> > Update man-page with recent changes to this syscall.
> >
> > Signed-off-by: Luis Henriques <lhenriques@suse.de>
> > ---
> > Hi!
> >
> > Here's a suggestion for fixing the manpage for copy_file_range().  Note=
 that
> > I've assumed the fix will hit 5.12.
> >
> >  man2/copy_file_range.2 | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
> > index 611a39b8026b..b0fd85e2631e 100644
> > --- a/man2/copy_file_range.2
> > +++ b/man2/copy_file_range.2
> > @@ -169,6 +169,9 @@ Out of memory.
> >  .B ENOSPC
> >  There is not enough space on the target filesystem to complete the cop=
y.
> >  .TP
> > +.B EOPNOTSUPP
> > +The filesystem does not support this operation.
> > +.TP
> >  .B EOVERFLOW
> >  The requested source or destination range is too large to represent in=
 the
> >  specified data types.
> > @@ -187,7 +190,7 @@ refers to an active swap file.
> >  .B EXDEV
> >  The files referred to by
> >  .IR fd_in " and " fd_out
> > -are not on the same mounted filesystem (pre Linux 5.3).
> > +are not on the same mounted filesystem (pre Linux 5.3 and post Linux 5=
.12).
>
> I think you need to drop the (Linux range) altogether.
> What's missing here is the NFS cross server copy use case.
> Maybe:
>
> ...are not on the same mounted filesystem and the source and target files=
ystems
> do not support cross-filesystem copy.
>
> You may refer the reader to VERSIONS section where it will say which
> filesystems support cross-fs copy as of kernel version XXX (i.e. cifs and=
 nfs).
>
> >  .SH VERSIONS
> >  The
> >  .BR copy_file_range ()
> > @@ -202,6 +205,11 @@ Applications should target the behaviour and requi=
rements of 5.3 kernels.
> >  .PP
> >  First support for cross-filesystem copies was introduced in Linux 5.3.
> >  Older kernels will return -EXDEV when cross-filesystem copies are atte=
mpted.
> > +.PP
> > +After Linux 5.12, support for copies between different filesystems was=
 dropped.
> > +However, individual filesystems may still provide
> > +.BR copy_file_range ()
> > +implementations that allow copies across different devices.
>
> Again, this is not likely to stay uptodate for very long.
> The stable kernels are expected to apply your patch (because it fixes
> a regression)
> so this should be phrased differently.
> If it were me, I would provide all the details of the situation to
> Michael and ask him
> to write the best description for this section.

Thanks Amir.

Yeah, it's tricky.  Support was added and then dropped.   Since stable
kernels will be picking this patch,  maybe the best thing to do is to no
mention the generic cross-filesystem support at all...?  Or simply say
that 5.3 temporarily supported it but that support was later dropped.

Michael (or Alejandro), would you be OK handling this yourself as Amir
suggested?

Cheers,
--
Lu=EDs
