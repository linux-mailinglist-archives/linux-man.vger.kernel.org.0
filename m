Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB36E268838
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 11:24:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726272AbgINJY0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 05:24:26 -0400
Received: from mx01-muc.bfs.de ([193.174.230.67]:46705 "EHLO mx01-muc.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726210AbgINJYZ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 14 Sep 2020 05:24:25 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-muc.bfs.de (Postfix) with ESMTPS id 59B8E20430;
        Mon, 14 Sep 2020 11:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1600075461;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=68NXYa0BEnVQVS9UE+cSng/EbXwq0ErayJ1ex9WHk3E=;
        b=XJUkjzcvR3xP+8zTM72jXQErxwNGZrLzcfZ63pqqi0zCPA3o8opa2WPwcw/aIYkJ2kk67U
        7u/9Z8FqkW+dpuRHNOMSwhPNqRHNcKqXS4wKA3HuTMAd6Kn+UP0AoU08hFbKMjG0BVHT06
        crYyW2lpKdA35ZWvGDbLQ4vbLN2UCqUEdDQKfcZjmvLKCJto2WBT7pyPor7QRgZ0XQqYNV
        87tPDqr+8rOAqYa0wB7ik98yDTHsPrKzS2bXbAjSiYC3MFG4LKyyTTQ+nGSl6XWg4NYoNv
        H3NUUUrkjDdmuFzklaaWSC1hExCHykcI91ATDqZ5EpSj0RTj2I0TnIE9szq3aA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Mon, 14 Sep
 2020 11:24:20 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2044.004; Mon, 14 Sep 2020 11:24:20 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: AW: AW: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
Thread-Topic: AW: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
Thread-Index: AQHWh7eCoX2qxL9OEkaYnOmAJnp5MKljZJ9jgABKwQCABDGHAg==
Date:   Mon, 14 Sep 2020 09:24:20 +0000
Message-ID: <67f68125677e4e17aa1742b88267e05f@bfs.de>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <00ae0174f35241efa962286b9247c590@bfs.de>,<c2b43a9c-ae80-fae6-16a4-09c9aab73ac1@gmail.com>
In-Reply-To: <c2b43a9c-ae80-fae6-16a4-09c9aab73ac1@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3031-8.6.1012-25664.005
x-tm-as-result: No-10--3.206700-5.000000
x-tmase-matchedrid: m4O0KhaxV9YI9V8p1Mx66XbspjK6JP6qDZxgL2y+vXeRmBpkPchPVWhk
        SwpykoqVxTsa1zsKwGBXo+50WYSM+DIiDIfRJcbnEhGH3CRdKUVOZvhLfqob32OMyb1Ixq8Vwzt
        gYVFKGplZVPxvRQjmVN7x/oGnlZAtIgXwp4ASkATx5KZMlKYS/a5BoXfdPww+EeYfWHmbru00hE
        i4P3jSnyFDPhCO3zhjQMEEqjKL1z9p8VUyl8SK7TuUqTPTfDTrrzl8sNiWClKbKItl61J/yZkw8
        KdMzN86KrauXd3MZDXZKSb2ILhhPAectNw3JwqQm07PbFcBn9LBbcxnuOFzqMXq/HY0K7Gc+T4M
        aKAbC1sItXxQKmji2ikAmjvWIcXsuDshmoxBQb3HCnBrOyIevHApsmbw8EMtreWoUbwyBi2trdV
        Vx3oRXsv0CksmuJO/QwymtxuJ6y0=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--3.206700-5.000000
x-tmase-version: SMEX-14.0.0.3031-8.6.1012-25664.005
x-tm-snts-smtp: E5EA56FF5E9DACA039B53DF381F054ADD62BDE6CF580CC03AE12FB44D728A1DC2000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=0.55
Authentication-Results: mx01-muc.bfs.de;
        none
X-Spamd-Result: default: False [0.55 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         BAYES_SPAM(0.55)[75.69%];
         TO_DN_SOME(0.00)[];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-1.036];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

missunderstanding,
i do not want to discuss sizeof() vs define

in this example you do:
#define BUFLEN 4096
 char buf[BUFLEN];
getgrent_r(&grp, buf, sizeof(buf), &grpp);

so there is no real need for BUFLEN anymore
so donig
 char buf[BUFLEN]; -> char buf[4096];
would remove BUFLEN

________________________________________
Von: Alejandro Colomar [colomar.6.4.3@gmail.com]
Gesendet: Freitag, 11. September 2020 21:17
An: Walter Harms; mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org; linux-kernel@vger.kernel.org
Betreff: Re: AW: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer siz=
e (instead of hardcoding macro name)

Hi Walter,

On 2020-09-11 14:50, Walter Harms wrote:
> BUFLEN should  be remove completely or stay
>
> jm2c
>   wh

Sorry that you weren't CC'd in the conversation we are having about it.
You can have a look at it here:

https://lore.kernel.org/linux-man/ab12151d-6951-2a36-2fc6-ea7eed538c45@gmai=
l.com/T/#m423de347de6a64d099887d4ce615660d16d5b0e6

I'll CC you in the next reply there.

Cheers,

Alex
