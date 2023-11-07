Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA0817E46A8
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 18:18:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229886AbjKGRSS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 12:18:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjKGRSR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 12:18:17 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9A309B
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 09:18:15 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BF1DC433C8;
        Tue,  7 Nov 2023 17:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699377495;
        bh=esxlJ6eUiV9kdq1clMgWOGziMvxfHbOD5AY/dMjUn0A=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Y3QOfOuEX5F4SEABY+DuXEQfAHZFUajPs3hJbY5OEeXM+fqTBk12VS2LYljdZ0Ndb
         MOL/yHmpvPSI4XbYAEupUd+MMD8il+Tmyt2oS+SGXwj15sXOCH6Zejyfz155fj0a+/
         mIDGNEe2WEe7PCpVEom0aDjkJ+lbw7nY95BgAl2B5eM85FZdH06K2TjTc8hO8PqoxV
         iEYLh7kCeP8QqY9d64ipwV7/Cj6JzJ0nyAeguR8L9DG1AmmwNX8FteauIrRnNtj7Km
         1oAldAeqEFkFYLL8Mx/OgZRbcxvgarfUsG7i8ttZSjdxamaloWT68cwM7xoFMFZ0jC
         +TCl5kwVxs8Sg==
Date:   Tue, 7 Nov 2023 18:20:58 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUpyCG4QZpbAZF8v@devuan>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
 <59eeaf31-ac59-4a90-b89d-adea5e011e74@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="57IhlTXbLq1OqTgK"
Content-Disposition: inline
In-Reply-To: <59eeaf31-ac59-4a90-b89d-adea5e011e74@jguk.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--57IhlTXbLq1OqTgK
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 7 Nov 2023 18:20:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

On Tue, Nov 07, 2023 at 05:00:19PM +0000, Jonny Grant wrote:
> Your comments don't relate to aligning the man page to C99 spec.

No, and blindly repeating what the spec says isn't positive in itself.
My comments align with recommending safe use of libc functions, and
recommending against using bogus functions.  For reading the spec, we
already have the spec.  I only want to add information if it is useful.
I welcome you to convince me that it's useful.

Thanks,
Alex

> Jonny

--=20
<https://www.alejandro-colomar.es/>

--57IhlTXbLq1OqTgK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVKcfoACgkQnowa+77/
2zKylA//Vs38qbg9riWtVEIkm3BGj+hLoQbUyQv+8D5lHuph8IcvnAJUUoJyhLi6
Vm/dlPqwErIlXBggKBBYSBPImHQ6+nKCX+clMUls6Pa54bIplfdUyqqEEKj4gfu+
ic4lhtrX+6khfg2+8BFEloOzPBQJvW9WNDoTPc0y7FkEJBaCov+GUMwl5k6piICv
evUHMHAViclcTssv+2jaVjPOAEYFLJbn/R3PoEpFnDagJBZEULV7vP4y5arG2K15
/yWPn0IDa+SrvLbNzMs4BUSAxkkZGq6ArNhvBF/Y71QehptXoRXPdGKbFqzcxcIw
AesxS0SEckyQkhs9yDO/6fEKwpsF2OrvIYH+nqjMBEt9vAB4DZb3CKqtnaa27Oy7
rHVPmIDogJXCUSFlcRkh8cA8wlf9PhdY8/IPJDLvimWSIzofQRUbutGTEqHedd7t
LJ3oL3iIQZzWGssGKkYSrbi/Ex0/PMoeFYWq0bxAMF//RMC+Y2c8aAzxIyfJAV4n
erZIdrqkvbw3B3VApxBS/SJdAk4uLoDWwkO6BBzqxRkoLVEum6oyNhF0hhxgipka
6wDQA/MZLQhUjQAFUaGcPZzyRewvTmaC/hCNvovfB7saQQQyI8TZry/LrmjJdgDB
B5H4pdGsWvTwpLIMB5ZXk1543Tori0vpeX2DakuuqFfksUK+TN0=
=+CIN
-----END PGP SIGNATURE-----

--57IhlTXbLq1OqTgK--
