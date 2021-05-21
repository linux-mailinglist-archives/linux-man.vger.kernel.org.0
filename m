Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C5D638CA17
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 17:28:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237462AbhEUP3v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 11:29:51 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:27216 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232199AbhEUP3u (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 21 May 2021 11:29:50 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 8757020689;
        Fri, 21 May 2021 17:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1621610905;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=bSpi/3HsRxe7PvyFUekmGZ5j1nX9DbLhcurap0ia1Ck=;
        b=hqj/4+L7wGwzTw75Q0KeuSt+hE84pjq9RTxVdDFs+zBzu4LuRcFWZ+iJE3VpVdOIUTfwst
        sSwIAvGoYWJR7opMEAE37C37vtYl4kwUVLrravkUrZQaqwg/EO4uf5p1mIz/KntQ9wTLAc
        ECwTcULzQEveDV7TfG4QhC5fA4hURU226jecpx0TtQ7wLCQd+p7A7gqln4e/gFRjSzfr+9
        3/ySxPWJlw36jSAbRsT1Mgz5HwSjtvPB8/+11E/rygYZlmoPtylm20ylDylhFLSHhCsluZ
        t0W2FdlSuJg5IzJNFTac6t/ou87FqcU6VOGM0nxK9x1kcAZ4w+dTT9phF2FhbA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.4; Fri, 21 May
 2021 17:28:24 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2242.008; Fri, 21 May 2021 17:28:24 +0200
From:   Walter Harms <wharms@bfs.de>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: AW: gamma(3)
Thread-Topic: gamma(3)
Thread-Index: AQHXTlA89d6eiUIVEUmVo8o1EvPcxqruB6J8
Date:   Fri, 21 May 2021 15:28:24 +0000
Message-ID: <87fc7bb664e54df2a5da1a9347f06ddc@bfs.de>
References: <60a57e3a.lbqA81rLGmtH2qoy%Radisson97@gmx.de>
 <6d2849cd-d8af-0539-e579-3201daed6ab1@gmail.com>
 <9baa6f3ac0dd45b4b75a11044dd0f0ed@bfs.de>
 <763071ea-e70d-ef89-8455-da7662e67518@gmail.com>
 <904f79501b114346a3e7bd84efb13a6a@bfs.de>,<509d34ee-4616-81e7-28a6-73a7e024dbeb@gmail.com>
In-Reply-To: <509d34ee-4616-81e7-28a6-73a7e024dbeb@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26172.000
x-tm-as-result: No-10--3.521800-5.000000
x-tmase-matchedrid: tqY+01Jua/DRubRCcrbc5grcxrzwsv5u3dCmvEa6IiGoLZarzrrPmXYY
        S0IdBFk7JOv44gpO+u0GELsQpfgc+ltv7lVTl559dhnFihmbnwWlY4F8r0vXP0oPLn6eZ90+cAI
        gNOS7lXb5jwYW28e9hZgdvjFnn2I/z72Qid45mWGJ9g2w8+AH1tbmwqk6BanYgl2XJFQkkUzbVX
        rtTxQ4GIQYFtaFqqBpca9nyMIMgSX1s8eCOeeiYMd3b2o5YTuS69aS+7/zbj+qvcIF1TcLYNH3J
        lle0mr4q/CPwjtRDbvVeptTRKjYpdSefNlpHYemF3wQ0cu1bTNBHuVYxc8DW0Yza41dGqxShHhE
        srkbWKEpWCWVwSzPC1mmAFmBwO3r72pdI/rDIfeOnKW5y3Y2vQso9oEdJxF1gCOzL6v7C+ej0H+
        m+yWYe4pePUk9FlXwsLsT1NAeXaLyy47Gi4RqGqoXHZz/dXlx21y0oPfgygr8nuHWCyHWhAJjLD
        MzzZnzg9I0Le+75EChjC6ufNT3Cy/33TWoSUH6Kwi7MItzaY0lUwMLwz1Qz1fLbVXR52bgngIgp
        j8eDcByZ8zcONpAscRB0bsfrpPI34T9cYMsdwz2iMKR76YL9DB8ZvnscQrnmuD/W87PuVbKvNA2
        b4WbxjZ1xTEfj+kuw2StZOikxKfzZlo3Q6TiyVMUz9xRrlUynZpWa0LXRvHf0ic5zgpSMaAgCgK
        CG9lmDP7ys8dRrrEdy+NYmKKLmVrVflnGTvH9
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--3.521800-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26172.000
x-tm-snts-smtp: 3DFAF8BFED4194152A4B45A1615EC32944E41508B8DD5FCE8BC34F13FEBD68312000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-15.00 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[3];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         TO_DN_SOME(0.00)[];
         BAYES_HAM(-0.00)[41.65%];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Status: No, score=-15.00
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

So we have agreed that existing functions should be documented.
and so far i understand we are taking about the  _r only.

the whole patch is the function definition. What could be done more is to m=
ark the function as obsolete/compatibility only.

The explanation for signgam should  be copied to lgamma().

________________________________________
Von: Alejandro Colomar (man-pages) <alx.manpages@gmail.com>
Gesendet: Freitag, 21. Mai 2021 16:47:29
An: Walter Harms
Cc: linux-man@vger.kernel.org; Michael Kerrisk (man-pages)
Betreff: Re: gamma(3)

WARNUNG: Diese E-Mail kam von au=DFerhalb der Organisation. Klicken Sie nic=
ht auf Links oder =F6ffnen Sie keine Anh=E4nge, es sei denn, Sie kennen den=
/die Absender*in und wissen, dass der Inhalt sicher ist.


On 5/21/21 4:08 PM, Walter Harms wrote:
> (before we misunderstand each other i do not insists on that patch)

No problem about it.  You could insist on if you wanted to :p

I'm not sure yet about what we should do.

>
> The function is available and that should be documented.

I tend to agree with that.

> They seem available for some time, but glibc says: These functions
> exist for compatibility reasons.

Exactly.  But that means it exists for old code to still work.  New code
should not use these.  So the manual page should serve 2 purposes:

*) discourage its use
*) help migrating from gamma(3) to lgamma(3)

The first one is already clear.  For the second one, I think that the
SYNOPSIS and ATTRIBUTES is enough.

>
> What is about a merger with lgamma() ?

I like it separated (as is).  It serves the purpose of redirecting to
either lgamma or tgamma depending on what the reader wants.

>
> adding to the notes section something like that:
>     glibc version
>         Glibc  has  a  gamma() function (and _r) that is equivalent to
>         lgamma(3) and computes the natural logarithm of the Gamma functio=
n.
>         That function is deprecated and should not be used in newer progr=
ams.
>
>
> re,
>   wh

I think that to document those, but keep it to a minimum, I'd add the
functions to the sections NAME and SYNOPSIS, and nothing more.  The rest
is very generic and mainly says "don't use this".  The only thing that
would maybe need an update is the ATTRIBUTES section, but I wouldn't
mind if we left it as is.


What do you think?

Cheers,

Alex


--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
