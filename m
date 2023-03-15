Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C39EA6BBBBB
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 19:11:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231244AbjCOSL1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 14:11:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229769AbjCOSL0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 14:11:26 -0400
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCF1141B6B
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 11:11:24 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id 44B192404E0
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 19:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1678903883; bh=+T99MULo4o9QcyHJjGH+FBAmIs0md/9js/okMhwbNJo=;
        h=Date:Subject:Cc:From:To:From;
        b=TQjXdewpQmca/CmJnUWbUjTkLNZRgU56wc8bnPXBtXxe89u+Q7R0uvNsU7GZsJ3PM
         SRNduAj3KuyMP9RpxJvUi3ZBozvGojCAE8rcRERdPl0P0cVDDI23Zd/UwX8p2cQzH9
         g7QJrR3c3GkmAfBaQJR+IXl9ksH/ToVlDJkNjZnAkh5Ivq17nkHurb9XD8gVnLfY4k
         VkIgxATFZ4O4Y+WpsC68dBXIR/3mGW+2pUQ+m0L4UhO1rdVQgF/SQWUQcKrY0XDSrq
         WKBstQS03dH9bnv3yYGgkslS8sgS9p6mPQZlF65kVNm4C+iPgNU1aiDmEfi8MTSo6c
         V/QjyCOYNHcSQ==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PcJP62w6cz9rxM;
        Wed, 15 Mar 2023 19:11:22 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Wed, 15 Mar 2023 18:10:34 +0000
Message-Id: <CR75QLUXYL2F.9ZFRDB68HXGW@morphine>
Subject: Re: Revert "Many Pages: Remove references to C89"
Cc:     <linux-man@vger.kernel.org>
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "Alejandro Colomar" <alx.manpages@gmail.com>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6aad40b5-04ca-68d8-7da2-cb4a7bed7ded@Shaw.ca>
 <a1a5ea63-9fbe-17f6-fe69-1850552a5422@gmail.com>
In-Reply-To: <a1a5ea63-9fbe-17f6-fe69-1850552a5422@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

> > I have an archive of many drafts including (so far):
> >=20
> >   1.5M Sep 10  1998 N0843-C1999-CD-1998-08.pdf
> >   3.4M May  6  2005 N1124-C1999+TC2-CD-2005-05.pdf
> >   3.7M Sep  8  2007 N1256-C1999+TC3-CD-2007-09.pdf
> >   1.7M Apr 12  2011 N1570-C201X-CD-2011-04.pdf
> >   2.3M Oct  9  2017 N2176-C2017-CD-2017-10.pdf
> >   6.7M Jan 24 11:37 N3088-C2023-CD1-2023-01.pdf
> >=20
> > which can be downloaded as:
> >=20
> > 	https://www.open-std.org/jtc1/sc22/wg14/www/docs/n####.pdf
>
> Do you know if we can distribute them?  which license applied to them?
> I'm worried that some distros are very strict in what can be distributed
> in a package (e.g., Fedora, Debian (main)).  There were issues with
> man-pages-posix in the past.
>
> Should we maybe open a separate project iso-c-drafts that installs
> drafts of the ISO C standards and maybe some scripts that will be useful
> with them?
>

This is probably a legal gray area and I'd be careful.
ISOs license agreement[0] explicitly states the following:

  > The ISO publication(s) you order is/are copyrighted by the Internationa=
l
  > Organization for Standardization. You acknowledge and agree to respect =
ISO=E2=80=99s
  > copyright in our publications by purchasing, downloading, copying or
  > otherwise using (an) ISO publication(s). Except as provided for under t=
his
  > Licence Agreement, you may not lend, lease, reproduce, distribute or
  > otherwise commercially exploit ISO publication(s). In the case of joint
  > standards (such as ISO/IEC standards), this clause shall apply to the
  > respective joint copyright ownership.

As we (or a third party) can only produce a plaintext version by downloadin=
g the
original PDF draft and converting it, we agree with the above. Thus, we can=
't
"reproduce" or "distribute" the standard, at least that's my understanding[=
1].
I highly doubt that major distibutions would take that risk, nor should we.


[0] <https://www.iso.org/terms-conditions-licence-agreement.html#Customer-L=
icence>
[1] For the record: I'm not a lawyer, this is not legal advice. It's very w=
ell
    possible that I've overlooked something.

--=20
Best Regards,
Tom Schwindl
