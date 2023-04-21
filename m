Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B5736EA9A8
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230088AbjDULtz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:49:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229657AbjDULty (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:49:54 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2391BE50
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:49:51 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 242C4664E;
        Fri, 21 Apr 2023 13:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682077790;
        bh=vyP6WPWXWEdJtiA1vrBB1hG4CAEbIskL+gcjCY5G4ag=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=exBF/L9NOhujUbd5hLJdq+wrrEjTG2AH1wsSwBRGCl5Kv7PDbG6Kb6AEHYOb8b/yS
         +TkatPEHmQJZ3QTv+eqIdLc/kCvdN/hlVUHUjSXydCCRJKcYcavYQPwp4ulx19F3by
         DlgdK0Fa3xlxKPzBEbWZ6ZpyqbQoBHuQ68Yu0BuflUdy2ZEJxpnlHSOhZpSCxclJck
         i55UWIyVTid8rsiv8qNXOxGND90kSaFD8ZmpH3PH1Tlph75TnsFghnGAmC1NOKs7Au
         YXGTVQilGdmHXWORyT85vqeHaqNbWjKfJi95zKpoiYE3dd/DytBjN84KutOTEg0U3L
         Wbji/NYVeKbbA==
Date:   Fri, 21 Apr 2023 13:49:49 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
Message-ID: <f4povlimtyravecrmtgarq34kzld7kce2gpepshvp7qmotxs72@kwyeuoh6pga2>
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
 <d4567f56-2061-385e-fd32-472b1e5b1b23@gmail.com>
 <2clfytracz7pbsqqw7xvhb24jrcazftogik6zh7wcpaxa6oxzl@naacxs6ujend>
 <eb8ebe6e-ac65-3a5f-7d61-34d994aae086@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="u777r5lklyrb6fvh"
Content-Disposition: inline
In-Reply-To: <eb8ebe6e-ac65-3a5f-7d61-34d994aae086@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--u777r5lklyrb6fvh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 21, 2023 at 01:36:19PM +0200, Alejandro Colomar wrote:
> On 4/21/23 13:26, =D0=BD=D0=B0=D0=B1 wrote:
> > On Fri, Apr 21, 2023 at 12:34:39PM +0200, Alejandro Colomar wrote:
> >> But I haven't pushed, so that we can still have it in the same
> >> patch if you confirm.
> > Yeah, go on.
> But do you prefer (a) or (b)?
(a); (b) looks better (imo as a mdoc enjoyer), but blows the A4 margin.

--u777r5lklyrb6fvh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRCeFcACgkQvP0LAY0m
WPEfMw//TBQHhPNF+GpJKhvplvw6WK4BoT8KI+QsvWGRdJMMn8XxvESVRo3HpE20
UDg2Q0/rJ5r7BuquWMrzEx5e661NbgZ1SQeT8tdnrdyGW77xpC/uOIVVMxW6IYMJ
qKgCCz8OS4KUokJ6dziNlnDdQReD/mj6AwTKr6HPLnjNDKWPLITovTeKePftUT7f
o+yiRndXpNS3QxHJ93wo+4h8zwW7hPqbG2ZKGVe7F1MXNqaeVlyc6SQwJ6Z71yBk
1KxkJ0e++1HdmE+ZzQAAUcUvH3+2LvcSZiijdffqNu80iY2o9uSAAzyXC28iYhSq
Ox3/XVU/MtNMFCN6hxDAvcLc7Z3La9sksMualmnNP19Gego77nElR35FQdvPg5r/
QZ6fRXK9Ps1Dd3c/Y91dDTGgE94Q+w9G5IOg/3XJbfgqMO2InrUZE+xxvvfRtzrs
Xbaq7e9bKCTJ8krWFW+QzzZcTrPQxlbkr2f8XLoc/3LILDO3MbqNovlmP9VnbS0k
RWGMunFde5PH2Q6F5ZY6lJQBecrE5RV0K11b/Gty3Xb4zR3mz87+xO1kip4ElNa0
8IvPHUVS8EQY3VlGrq7qaa/st61R/o+sS+pFKpHa9PraNoXtXHzAXI7aSnWCOnc0
oxILulo+b3fmDnl5J6Op0+IHmw/NtHTGKSpGGUqNM6uGtCyJslk=
=RbXH
-----END PGP SIGNATURE-----

--u777r5lklyrb6fvh--
