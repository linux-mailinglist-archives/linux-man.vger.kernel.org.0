Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4589E7E6AA8
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 13:35:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232159AbjKIMfr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 07:35:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231439AbjKIMfq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 07:35:46 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FD652D57
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 04:35:44 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2514DC433C8;
        Thu,  9 Nov 2023 12:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699533344;
        bh=5M2A6zg2gwPC5DEH6LmcoIWw3rI/aUKwo/nKwOFDOiE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fcOuKY296ZraSYJnXWWH+9ADGYthbePZztzMTLEcKCrkKq9euQfd5nX9THaggHIOO
         +Tvqy3rzFPCUlUJf36swvC3tyJCD8RG2G65mxfLIQ3dtkqsMGo1eNXmpNqzqOSPfy6
         +shMyvCklLV6eOkAZ0Fry2u2w2Zf23SoTNV/4d4z+U7S/8ge2/aGpVADElHUhEApoh
         MyerQ6/mU/ToYp1EAZkm+DeodRw4/ZxlqIGiOKEHPp1SGJLzkc5CT6zvWJ9UwJ9Oyw
         SnZyhY7Iurn0yRpTbBJb+V5x4mcCle5f5rFUv8e5oHOpCLnsF96CMxAf7zFGp/MwiS
         dSLYR4WdpfbDA==
Date:   Thu, 9 Nov 2023 13:35:40 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Matthew House <mattlloydhouse@gmail.com>
Cc:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUzSHEPUVDvBnqAL@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="0pJu4PBDWgqylmjq"
Content-Disposition: inline
In-Reply-To: <ZUzPNydLkFPEvvsa@debian>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--0pJu4PBDWgqylmjq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 13:35:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Matthew,

On Thu, Nov 09, 2023 at 01:23:14PM +0100, Alejandro Colomar wrote:
> > > > reasonable to highlight precisely why strncpy(3)'s output isn't a s=
tring
> > >
> > > How about this?:
> > >
> > > diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
> > > index d4c2ce83d..c80c8b640 100644
> > > --- a/man3/stpncpy.3
> > > +++ b/man3/stpncpy.3
> > > @@ -108,7 +108,10 @@ .SH HISTORY
> > >  .SH CAVEATS
> > >  The name of these functions is confusing.
> > >  These functions produce a null-padded character sequence,
> > > -not a string (see
> > > +not a string.
> > > +While strings have a terminating NUL byte,
> > > +character sequences do not have any terminating byte
> > > +(see
> > >  .BR string_copying (7)).
> > >  .P
> > >  It's impossible to distinguish truncation by the result of the call,
> >=20
> > Yes, I'd be perfectly happy with something like that. That way, the
> > scariness is far more immediate ("the output might not be terminated!?"=
),
> > and thus more accessible to the typical reader.
>=20
> Ok; I'll add that.

I think DJ's suggestion of providing an example shows this without
needing a wordy explanation:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df502d3290c9f6f13f870cc041f553073af434949>
Here's the page now:

CAVEATS
     The name of these functions is confusing.  These  functions  pro=E2=80=
=90
     duce   a  null=E2=80=90padded  character  sequence,  not  a  string  (=
see
     string_copying(7)).  For example:

         strncpy(buf, "1", 5);       // { '1',   0,   0,   0,   0 }
         strncpy(buf, "1234", 5);    // { '1', '2', '3', '4',   0 }
         strncpy(buf, "12345", 5);   // { '1', '2', '3', '4', '5' }
         strncpy(buf, "123456", 5);  // { '1', '2', '3', '4', '5' }

     It=E2=80=99s impossible to distinguish truncation by the  result  of  =
the
     call,  from  a  character sequence that just fits the destination
     buffer; truncation should be detected by comparing the length  of
     the input string with the size of the destination buffer.

I think this is quite clear regarding what this functions does and
doesn't.

I'll leave it like that, I think.

Cheers,
Alex

> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--0pJu4PBDWgqylmjq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVM0hwACgkQnowa+77/
2zK1UhAAo4EukWRYAcaoyOTEgReqM4NCJPVSvT6eta5WncnFS+3+f1r74epDnXvf
YRTpMqJhZHNqUYAjoNS7dqr5suaZz9T+5Wc5TpRGdFMazLm4dP0wUzPjNOKphyJh
HsecIdnRQWVHlc7n0uh6iKkr3Uu33Pflu515tQpEm/KhV2z3jtd7y3fxbURGfC+N
10xG9i1IrDphzBJe2P0FhzHymW4DNOrII8POD2CJWkdB87Ls9v/WyKzdWltHSj7G
OkDpN9JDJX+7G0XU2DXeoSosOj2zW0XdTJwGuiWxfthm2pPY1kqdswktFNRejGVe
JOAuZ8MkDOm02XdokRpo7OND4m5R9iYoHqkQv4txl0NFSpeuwPNGfMmXK1eFHe1C
7Nz3SLWFWARwZwelzeLgnxKThyJw/xL7yJKGMf60JRaI8NLeYDNtQVkzxXxoZPP2
qBb9RhkacTKLNb4nbhSjwomxRcWoYpL0uqmJZ68yB0RT6zE5OHdNBrhUKn9ikavW
/Q++UKzyORPz8HEct1ykcijKv8ghPFM2oTj2Zm1BSevlmsMW3srfAOcDXHvxUyy/
YBJsa6x9uuRx8Q5e7PXscddbLhlxMm6OS7Xrqee27dc16Wv8g/A3pzdShyWZOrmR
aC8LlMOF1xOxXD7idQvNXbx1HOumqSyCrsxsnNzqska3VI/OWbc=
=njnb
-----END PGP SIGNATURE-----

--0pJu4PBDWgqylmjq--
