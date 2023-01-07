Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73D65661041
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 17:44:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229997AbjAGQoi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 11:44:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjAGQoh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 11:44:37 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D448BBC88
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 08:44:36 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id i127so3563728oif.8
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 08:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zz8/TEUQw1PB3PTd60yYvXIRCgkMiBYVN2skjmI1n7g=;
        b=lMKBR24k7wKC+598sKXhkrGAUuPSUiZcAm6D8gpcCEfuJ8v8m9Ztl8+DjtbAvf9BYb
         2WrOzRP0EK1mEcC9H4hgpuljbuO5gor4X51nqWhbz8UTK6K7iWInng59P6ScyTllJFmE
         oPOi0om5HwcKA4JpVs3Jbos9S1CZoE//k9nd1Eu5tKlAn+gB4v/0yynl3+mUqPbF8b4h
         s/yIrCBEA/etitjUj+inrptB0tI2Fci6CJTxjzH4nipSG3TW4slYqzXW5ZWMi+eCn2+j
         SmM4ozOho3dPt5r5GYCAOrXq8rajdiFlOpE+tKDJb0kN7M0GDnhTfBK/HSN44Bdn+82i
         y/5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zz8/TEUQw1PB3PTd60yYvXIRCgkMiBYVN2skjmI1n7g=;
        b=L8JYLuyLkQdKT5g9Z66glvQudIa4iGsoSQWqR81QKeQqEV2nzPwgjmR+tYE3Qi6NSi
         3I0Cb4jf+motx1QZytJ6Y4ODnUUfmvfwn/m0EJz4Qo+cOYCmcfXM4k40eZZ7exNKlrbO
         RAH9je51HTkqxLqNWLwI1XfVclSMI01pOj0eoyrodU0+1zf3HiznZBqzaJmJnjcpbT1C
         m/cCmfSDqq+QhYrjE8vaO/MAr3zQcmfDpdHPJ9XEoVRj/yxOYiG1BuTNrxTlQdq+SaOp
         DvzHzcn5qd4Z0gVZvkD3uTxqAhOywwqbJEfejMPKLDSYJ2Eu6wHoNpwiehV3qL98BECz
         7fSg==
X-Gm-Message-State: AFqh2koG5M3jbw75KzyXwOB/1CyQ+ZjgPMxaCnypUwiZ/fMejLHNhb8J
        340SXHE8Spz8la41B44ESvClyxkVW7M=
X-Google-Smtp-Source: AMrXdXtalaMvrzxoPKg0NbiKj/tPjFoMOdzPC2SbasdpRzF8REPYy3ofv4IJ2AumXXsIbktiROjK1g==
X-Received: by 2002:aca:f041:0:b0:360:cd17:6950 with SMTP id o62-20020acaf041000000b00360cd176950mr34249012oih.43.1673109876124;
        Sat, 07 Jan 2023 08:44:36 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i9-20020a9d6109000000b0066c3bbe927esm1997421otj.21.2023.01.07.08.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 08:44:35 -0800 (PST)
Date:   Sat, 7 Jan 2023 10:44:34 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Dave Kemper <saint.snit@gmail.com>
Subject: Re: [PATCH v4 04/10] libc.7: wfix
Message-ID: <20230107164434.e3g4iecrwoxrvpyx@illithid>
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
 <d8065ecf-572a-5413-ed0c-318489c4e613@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ywa435adcc2oz3dk"
Content-Disposition: inline
In-Reply-To: <d8065ecf-572a-5413-ed0c-318489c4e613@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ywa435adcc2oz3dk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-07T13:14:01+0100, Alejandro Colomar wrote:
> > > +glibc also offers a manual of its own in Texinfo format,
>=20
> Also, it might be a good idea to use texinfo(5) here.

At present, that's a stub page that doesn't tell the reader much.

Learning how to compose a Texinfo document isn't going to be on the
casual reader's path to learning more about glibc.

Regards,
Branden

--ywa435adcc2oz3dk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5oWkACgkQ0Z6cfXEm
bc5eJg/+PqdQPmnrB3Cn1W2TAoJ19yH9BN6LwVWbj2oRIN9X2IC3cvAxnszdkmIU
OaFs7ZuukVZ36E3nNhMArL9M2W5ARf59qrMrz7LrSX9GmMhprSZNImd0zUlDxlyJ
d+KNk1h3ZlSrw4tL1PPwotAeVPKLr1BiHcXMUaDp1StDO4f9rFgNKc2lHmXsDsjt
wByYAIx7//zFCmUIxvI8tXjWZgeL1vw2fUonf8vW+IPRutD9Ltl0ItCg1BPIxuxv
6MnDfItnWQBsRODsy2kr2wH5UylHJ9OblqjxQCcIIDUbg6X+lyHyYiNSNSI77gZ/
2JcGV/1d73MNVuruqvlOXtTJfMzeKNX//49I2BY6UYNphOy2p4VU/qRN7aBCaL1Q
pDPteHwr7wmcEWcJHMi+BqlIXWocP9scyWA6QVpIWmR3EFn9CJ1m7v1xIkerBvsX
rsPXGW6B4y0LU0oVCKPJbB31iWQ0t3FqXuWjxgQPhrXei3fPctgjgpmlRPbmGZEZ
l8g10pKdpLrt8eqjXkupMG0HdIZ84NY2y7vJzAmBfsOyUjj1RUVFNVrtyMbOhXrk
3oHfjwE55GZ2G/53ZfTDnpxftNDyB1O6DgX45qMAxRE5YktoWHASGri+J/OovuH9
RelnyCJakNJTkoziBwUHCpb5ejpRdfb7u8MxcXJWD/MYY0syjTE=
=JIuh
-----END PGP SIGNATURE-----

--ywa435adcc2oz3dk--
