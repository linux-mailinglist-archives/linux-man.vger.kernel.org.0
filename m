Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CA45488596
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 20:27:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232428AbiAHT1i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 14:27:38 -0500
Received: from omta002.cacentral1.a.cloudfilter.net ([3.97.99.33]:51956 "EHLO
        omta002.cacentral1.a.cloudfilter.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232135AbiAHT1h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 14:27:37 -0500
X-Greylist: delayed 428 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 14:27:37 EST
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id 64tQngWQKyr5H6HGPnGAiq; Sat, 08 Jan 2022 19:20:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1641669629; bh=+B3Hvo2sswnlQc9VfmqeDffCSwvyI4LDvFJ++jHE3YI=;
        h=To:Subject:Date:From:Cc:In-Reply-To:References;
        b=fhTSbrQGc9+DxalJffbpDxIO/NXOe+se8pZAC0M2r816Ni0mTFqX3lgt00wG7h8TG
         qSXVgTgXO2Src4A+e7jYUFggarXbyxf22MnBkeiscD7eTG5V3GQ5hilICj1AnBiFbQ
         j+AfCHHyd1xgvuyLGCUqUg9GME3A08Wx12VgciARqMvV3Edz+AHjV7Iij4AlhVC2Pp
         HutRdKoWE0OCGazKQ2UIf0YCD5dUv2EokxWhxa591MRKWVwz+DclW82IiHbPD6/u2y
         TtgEJc0zXykdV8ZOomtrftlapS2INIrjGAuazfxdwgFftZhHVxXWmkInO5PVxsHYeM
         T2zCcDMTvzYYg==
Received: from kylheku.com ([70.79.182.7])
        by cmsmtp with ESMTPA
        id 6HGJnpdNCa4s16HGJnPOec; Sat, 08 Jan 2022 19:20:29 +0000
Authentication-Results: ; auth=pass (PLAIN) smtp.auth=kkylheku@shaw.ca
X-Authority-Analysis: v=2.4 cv=S9vKfagP c=1 sm=1 tr=0 ts=61d9e3fd
 a=pMSlDXUwMa7SJ1EIez8PdQ==:117 a=pMSlDXUwMa7SJ1EIez8PdQ==:17
 a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=DghFqjY3_ZEA:10
 a=UkEQIE5X_eFDPzLVPE0A:9 a=QEXdDO2ut3YA:10
Received: from www-data by kylheku.com with local (Exim 4.72)
        (envelope-from <729-670-0061@kylheku.com>)
        id 1n6HGJ-0002uW-1D; Sat, 08 Jan 2022 11:20:23 -0800
To:     mirabilos <tg@debian.org>
Subject: Re: make-rc: A parallel (as in make(1)) alternative to sysv-rc
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable
Date:   Sat, 08 Jan 2022 11:20:23 -0800
From:   "Kaz Kylheku (gmake)" <729-670-0061@kylheku.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Randy Westlund <rwestlun@gmail.com>,
        Ian Jackson <iwj@debian.org>,
        "Vincenzo (KatolaZ) Nicosia" <katolaz@freaknet.org>,
        linux-man <linux-man@vger.kernel.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Debian Ecosystem Init Diversity Team 
        <debian-init-diversity@chiark.greenend.org.uk>,
        help make <help-make@gnu.org>,
        Adam Borowski <kilobyte@debian.org>, Benda Xu <orv@debian.org>,
        "Devuan (Debian is Not GNOME)" <dng@lists.dyne.org>,
        Mark Hindley <leepen@debian.org>
In-Reply-To: <a43e9876-fd68-7e64-d916-3e67bfca71f@tarent.de>
References: <3a34ccac-1d2b-7f5a-f0fa-6ba22dd1680f@gmail.com>
 <a43e9876-fd68-7e64-d916-3e67bfca71f@tarent.de>
Message-ID: <9ff6d1c146e5ef78264ff925a7c004dc@mail.kylheku.com>
X-Sender: 729-670-0061@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4xfNL0uHKVwdmayA2fCguPWeQT+h9BOxYivVgk5+R6IubtGOjagdCg0dB71wRuBNcHrUfvL1OTS71sXVZup+com4qaF9hJjlQ+fE2gTTGZ6JPDtNiDkG3H
 tgTAnYy/1K5qmou5AsL8xS1nMPmBAYQngNHDtfqpC+h48JYCOoqKfiyUB32Mflg5UwaJOVcOFXQH/K0CynRl4A0SvGyQ2jVzn7daiCiiMvQDR875cLWBXecX
 7RCeV+d+7ALRlI2yYXT3/r66cPEIsm0W3RGW44utgVfW9b9uV0KfUvMNqHduQPZlbqY/2wnAqLjTMvfCeCc7hNuJbpDWR2h4CiOLfrSuhxwtfd5hMvByHYXJ
 pvl+/i9e3xd58980CUHz5TCFsw4j1+1b90h6x8bKOvs1bOOUKJRibvHjnACehFLsanAjqIsh+qPB77zFV4GVk+AQLzpk2iq1C/UAdiBtGtFma22x0jvqgJAY
 dbgnQPUYTIEEhYXh2Prjx5egqA/L/ofa8VVNyFGQ+DRIycp0h7JYhKvrORkfc4dwDEfdRnR5NcOxAV3WF5ZAksiDP3UCj6AsvWhsyQ==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022-01-08 03:43, mirabilos wrote:
> Bah. How often do you boot a unix?

Boot time optimization is very important in some embedded applications.

A powered-up device is expected to come into service ASAP basically.

Some devices are powered up every time whatever they are embedded into
is powered up, and have to provide some important function to that
host environment.

