Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B2E83E416B
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 10:14:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233847AbhHIIO5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 04:14:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233846AbhHIIO4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 04:14:56 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1B58C0613CF
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 01:14:36 -0700 (PDT)
From:   Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1628496873;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=B9uprR1/T6YAEw/RTr1desPbAMqusdRIbae7UsTwax4=;
        b=n6j1YyegvBmRwTX74CmPz+fLS1d40oDMTBvcdEfiFmzJKBdJPodS5lH7qsLMdNZegCLee2
        ynKI847AjNjvB5Xyy5X2wNeyc8JpDjNYfM/mC3O5QNVauSkt5mnDZjkLhAZFVTC3iq7Tcd
        /9GuidPGdJOM/mBQgM13Fm8o2LMSC3iTYm/VPn3lnngp/g8sqEsA7cUQNoBRqhXzq4t5U+
        /O5luJb5H0U5JgBE4qq1U21c6WWbQjMzmqcKZF7773eF8GyWTzLsqV3y7cm625JHifTMLp
        NAPE/LdjDvF3EvfdzKNJA6Wy/9p/Ae21VcQ1WoBG2dXi0U/1SaZGuMDHCUBgNA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1628496873;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=B9uprR1/T6YAEw/RTr1desPbAMqusdRIbae7UsTwax4=;
        b=n+0N3i5xziaOKPdo9y20ppZl8zEEEWGKT9A9BhxU8WmOJS3R5SHjv8mItSz9/5RLIGkSm3
        8oj56ASejIIYu5Aw==
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 06/23] futex.2: Document FUTEX_LOCK_PI2
In-Reply-To: <8560b628-c57e-eff6-ee59-34ac12d2b74d@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-7-alx.manpages@gmail.com>
 <8560b628-c57e-eff6-ee59-34ac12d2b74d@gmail.com>
Date:   Mon, 09 Aug 2021 10:14:32 +0200
Message-ID: <87wnovxcev.fsf@kurt>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain

Hi Michael,

On Mon Aug 09 2021, Michael Kerrisk (man-pages) wrote:
>> +.IP
>> +If
>> +.I timeout
>> +is not NULL, the structure it points to specifies
>> +an absolute timeout.
>> +If
>> +.I timeout
>> +is NULL, the operation can block indefinitely.
>
> The above is the same as FUTEX_LOCK_PI, right? So, it
> probably doesn't need repeating.
>
> I've reworked this description to be:
>
>        FUTEX_LOCK_PI2 (since Linux 5.14)
>               This operation is the same as FUTEX_LOCK_PI, except that
>               the clock against which timeout is measured is selectable.
>               By default, the (absolute) timeout specified in timeout is
>               measured againt the CLOCK_MONOTONIC clock, but if the
>               FUTEX_CLOCK_REALTIME flag is specified in futex_op, then
>               the timeout is measured against the CLOCK_REALTIME clock.
>
> Is it okay?

Sounds good.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmEQ4+gTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRB5KluBy5jwpiZBEADNakPMv8M5iTa76qi0c5uWr0n+vj+I
b5Wd4tuMrwSix+eX4ZxobIZILXHUTOe9xoHCX+ERMLaSMEve/0NVMjMjuRNcDt1n
94/WeWH+VSXnM+RiAkNMHMUsEY33WshQo/KMI6c12G5GW+MmkSXLFpk+8zRu1FOt
4Dgew7EqYDjx0Ny0Tei/21JliIqZyuPsnLhHw3o/dFce1NPReodh99vi4Gn6guPz
WfTdDS4Yc0gUV4DfrrGgAXBSKan2KuV3wZe/FY4sxRWmpOFGEOnSL8MH6jMbgDLI
OQd5Czq+S0+nnBTHtB5vV3EviicR3w+oC//2pgy9B+24WkxIwnPQHyYJ8Q1RlwVB
k/8stfCu7PrICv4NXqU0gdQfXkbQ1+i5Rx+hzIWkle/Hx+q+IIykkHqlnKms/kL0
gz595s0854j4ofciLEPGDDJBVvNG4NGj65feETurX2sM0kJEX6ytOOb1wD8hUJAx
T+At12ORfqNICxpJBUgF3GN0SZXyEartZhvdW9IwQAkCaXTlXbGNodquAJgc79ux
sxqc9EuB4LZR4LwdMu0fFKE9b8CaMIyY19HBA4z/HW/jLQIPMVV/nGShYsQ6zS9X
zp+2pjGUivRpEHcQyP/qy+yzYgjg0kntnaVBD3AZUn7mY+QHrzoRmFjgCbFbE4Lg
Yek0vPmfah2b1g==
=Ef05
-----END PGP SIGNATURE-----
--=-=-=--
