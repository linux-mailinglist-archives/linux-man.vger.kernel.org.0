Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E33F280541
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 19:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732407AbgJARbd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 13:31:33 -0400
Received: from esa3.mentor.iphmx.com ([68.232.137.180]:32876 "EHLO
        esa3.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732287AbgJARbc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 13:31:32 -0400
IronPort-SDR: Vjoul8mRRCjAcWBd2jm4PIEhaKlu17jM4VcBeAgjKer6+Td8w0t28gjI2S8FrGf0wwkPQCu+QN
 uc8Yjf7kxf/ZEnmGCQTf0cyCh3dRgh5ZXVZSpc9/AfAQGQBW3YK65LLQCWNH/f08pzrqdoj7SS
 SHFI1tktb/zxYLkH/MU/DpUcu8c/N7XjRwnVgcddIHkP3dMZUhYqs7RnWrczn1UZihZCtflOx1
 k4y9qeeJTl7LZOgzqblqgYzMcci9Jzjeg5MaWLshHX6OJ2Hfkm1OO+4/hMi8rhNVVk2BEj6sQX
 q/E=
X-IronPort-AV: E=Sophos;i="5.77,324,1596528000"; 
   d="scan'208";a="53473929"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa3.mentor.iphmx.com with ESMTP; 01 Oct 2020 09:31:32 -0800
IronPort-SDR: 5j0x1AUJ1eFEKRFBHttUzOIhb8BbpHGu6fJMt8JnSd2CD7HV75mezuxZOzoZC/C02GHTfNSSa+
 TThh8BOXX7OM9d+xdaGKM0fIyqwV/I/gE3KcpoUw2eGO1T2uSnisHnp/1azeN3O/y6BB3TGYrd
 Foao/nUMACY7chgTgRWPOnpCRfpOhnSwWqeJVtliZr3dR4ifVthAABHyM53dH9qszHrmgaQnGj
 tIaIFG7u3+prGYtqIxpXdlAkJZCMM3nWOnNSKKJVfZtRb32XpATAR+QticorIMCS9HmyAEssSg
 GOA=
Date:   Thu, 1 Oct 2020 17:31:26 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     Jonathan Wakely <jwakely.gcc@gmail.com>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
In-Reply-To: <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
Message-ID: <alpine.DEB.2.21.2010011724580.4323@digraph.polyomino.org.uk>
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com> <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com> <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-07.mgc.mentorg.com (139.181.222.7) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 1 Oct 2020, Alejandro Colomar via Gcc wrote:

> Because 'intmax_t' has a bug
> (actually I know GCC rejected the bug report,
> but the problem is still there and users should be informed about this)
> which is related to __int128.

__int128 is not an integer type as defined by any existing version of ISO 
C, precisely because it's wider than intmax_t, and changing intmax_t would 
be a big ABI problem (involving new symbol versions for about 100 
printf/scanf-related functions in glibc, 200 on platforms with multiple 
long double variants).

See the proposed removal of intmax_t in C2x (accepted in principle at the 
first virtual Freiburg meeting, but so far without any wording accepted 
for any specific approach to removal regarding e.g. preprocessor 
arithmetic and other places depending on intmax_t).  That removal would 
allow __int128 to be considered an extended integer type as defined by C2x 
and later (with int128_t typedef in <stdint.h>, etc.), if desired.

-- 
Joseph S. Myers
joseph@codesourcery.com
