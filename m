Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3FA01FEDBF
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 10:37:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728704AbgFRIhJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 04:37:09 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:57944 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728585AbgFRIhG (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 18 Jun 2020 04:37:06 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 35E29201CA;
        Thu, 18 Jun 2020 10:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1592469423;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=BMAkIpVB6Ec8bxMXaXDlnBtuLlmYwuVzfvIajb5bYlw=;
        b=DsLceBSU+RV4Ts2kllklbKeUFoMf4WcEtafauqO7NzeDlPF9NfRM3FQMcrXh2lPJhyrBbj
        1jyHiWD2ZXRNF6qUnt4XzBOJAy8gnHEUeuz/0UQEM+Y4hVdGbE+88EiusvSOts2t5uGvNF
        zsDLN/OF0xZwgY+6tMv/EXA8aTXCe+phO1JAfSqMbCKhVY6RNk4l3azi71olrix6hq/Us3
        q3yeBIh1Akj6Q3LKM9ZpqYw+9DAZEyP2Q4td5YBZ83FXyI/5sud7DorVeztk1nuDHwL6m8
        LCpDWp1ZN0b3eChL1oMBuovGEH7n4oy/smSNDU4PCHto13XvB3Crn3mUSepepQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Thu, 18 Jun
 2020 10:37:02 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Thu, 18 Jun 2020 10:37:02 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: [PATCH] fread.3: Explain that file position is moved after
 calling fread()/fwrite()
Thread-Topic: [PATCH] fread.3: Explain that file position is moved after
 calling fread()/fwrite()
Thread-Index: AQHWRA6rt9L9Mj5+0kyabTt0DOxZ96jbdxuAgABAVwCAALIsJYAAhqQAgAEZ9ms=
Date:   Thu, 18 Jun 2020 08:37:02 +0000
Message-ID: <4d901a75517246baa6a5f82f291c0595@bfs.de>
References: <20200616182659.12365-1-arkadiusz@drabczyk.org>
 <20200616190017.5y3pwpb22w2jeqls@jwilk.net>
 <20200616225034.e4uzibuemo7lpmet@comp.lan>
 <3294b2a2fae14460984e2f3162f7ec35@bfs.de>,<20200617173010.vekk35vrslmtdm6r@comp.lan>
In-Reply-To: <20200617173010.vekk35vrslmtdm6r@comp.lan>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.01
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-0.01 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[];
         RCPT_COUNT_TWO(0.00)[2];
         NEURAL_HAM(-0.00)[-1.020];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.01)[51.56%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


________________________________________
Von: Arkadiusz Drabczyk [arkadiusz@drabczyk.org]
Gesendet: Mittwoch, 17. Juni 2020 19:30
An: Walter Harms
Cc: Jakub Wilk; Michael Kerrisk; linux-man@vger.kernel.org
Betreff: Re: [PATCH] fread.3: Explain that file position is moved after cal=
ling fread()/fwrite()

On Wed, Jun 17, 2020 at 07:46:25AM +0000, Walter Harms wrote:
> Hi,
> i do not think character is correct it would confuse fseek() it says:
> "The new position, measured in bytes"

ok, v2 already sent.

> to make things more complicated fread has a "size" and returns the
> number of "things" read (" This number equals the number of bytes
> transferred only  when size  is 1.").
>
> therefor i would suggest to move the success case
> > > +The file position indicator for the stream is advanced by the number
> > > +of characters successfully read or written.
> into the "description section"

ok, let's see what Michael thinks about it.

> And add a word about partial reads into the "return value" section. E.g.
> to make clear what happens when you try to read size=3D10 while only 4 ar=
e left.
>

Isn't it already covered by this fragment:

"If an error occurs, or the end of the file is reached, the return
value is a short item count (or zero)."

IMHO no,
what does a "short item count" mean ?
E.g. my size is 4 bytes and there are 3 bytes left to read. what is the ret=
urn value=20
and will the last few bytes ever read ?=20

--
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
