Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E81F6D0AF6
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 18:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230294AbjC3QZn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 12:25:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230123AbjC3QZm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 12:25:42 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C96C5BBB3
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 09:25:40 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id v1so19696337wrv.1
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 09:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680193539; x=1682785539;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ukPkdzdtq2qG54AAgmJVa/+WkMcusrnHzBBAig2c3G4=;
        b=cILjBmQYTe2q+NkeMbDQZrC+Qif8wX6UPNYEGv0c2RSAPncZtwh/yPpTA4ylbzGdcB
         lM+1iNv1ljagRuuIiBhX6/3C3QpsBdkpN6gJe2E02BTmm+D6uVfqXoPBbUXLVf+/p3Ss
         kIZspqzf3MbzNE5Xb7HqFq2KxvqQKnlMZFZoG5h+lQva2pmDusosTFSgEeV1h0aFxZfL
         rOONbtH7AuHeCrdZ7UV2OIw70xOhooM/qmBmrdS5YrsMOZRY1owRKqP7Ogzco5WI+QZk
         Fb3pcLBR7RTwAObS7nMpI+/2OAMpeU9GeY8IWOx5rdrP8w04tNRe10sAPV5pDFooC/F2
         nkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680193539; x=1682785539;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ukPkdzdtq2qG54AAgmJVa/+WkMcusrnHzBBAig2c3G4=;
        b=YPKoZKl0qMPn7W4AYQfLmWQBS9x5D0n6+j55LFEaFS7nzswh+VHlfG92dW4fn4k4ct
         9X+UNCsht5mNxhmVi0lTuvuO9zZFgtHn53U/6ku3hjPEUoGMiBqjDts/6mEWKKo2h27G
         rMMnzVh/DIkIslxmiTyarWwRm34MpaSoWLICtmdZ2FX0/eqX0hdDYX4WdYaVZCetLCHi
         Yy3yXW1u3BmxLvOhldk/Gtv4FCWQcraeu+MvS27ox3fwlIeJLLF+2prPbmotu3eqwXoQ
         hAgeSMHZ2EnW/W2PFZJg3pFNDSRTaitOI919Zz+GgHA9q+Iph9KQlbx7ywBEtmYeyKjC
         D4FA==
X-Gm-Message-State: AAQBX9ds2xCgEvWElAy5qnjDLEmDCWf2CRFIbBSkMMZ+yZtW1qJB9IbI
        hnN1JW+CM3s5AoS1aibmsR8=
X-Google-Smtp-Source: AKy350aAgXqREOtsKQnE4t+SuvArfGEWP736iBfRgC2v6TRdG5pvgMbwbiF/5tIGdA59L38G+E68ZQ==
X-Received: by 2002:adf:fe0d:0:b0:2db:4670:5adc with SMTP id n13-20020adffe0d000000b002db46705adcmr18282617wrr.20.1680193539117;
        Thu, 30 Mar 2023 09:25:39 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i1-20020a5d6301000000b002d9568395f8sm23202543wru.36.2023.03.30.09.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 09:25:38 -0700 (PDT)
Message-ID: <2ebdbde1-59d0-fc1f-672e-e53ea7a46dc2@gmail.com>
Date:   Thu, 30 Mar 2023 18:25:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [1003.1(2016/18)/Issue7+TC2 0001641]: sockaddr_storage is not
 alias safe
To:     eblake <eblake@redhat.com>
References: <ac7432905ef55accc85429aa9151ae03@austingroupbugs.net>
Content-Language: en-US
Cc:     linux-man <linux-man@vger.kernel.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ac7432905ef55accc85429aa9151ae03@austingroupbugs.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qG5BbtKpzDz0wXGthq07KSrq"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------qG5BbtKpzDz0wXGthq07KSrq
Content-Type: multipart/mixed; boundary="------------3NMCCT2cnlyyepGnk0gWbxKg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: eblake <eblake@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>,
 =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Message-ID: <2ebdbde1-59d0-fc1f-672e-e53ea7a46dc2@gmail.com>
Subject: Re: [1003.1(2016/18)/Issue7+TC2 0001641]: sockaddr_storage is not
 alias safe
References: <ac7432905ef55accc85429aa9151ae03@austingroupbugs.net>
In-Reply-To: <ac7432905ef55accc85429aa9151ae03@austingroupbugs.net>

--------------3NMCCT2cnlyyepGnk0gWbxKg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eric!

On 3/30/23 17:22, Austin Group Bug Tracker via austin-group-l at The Open=
 Group wrote:
>=20
> The following issue has been RESOLVED.=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
> https://austingroupbugs.net/view.php?id=3D1641=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
> Reported By:                bastien
> Assigned To:               =20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
> Project:                    1003.1(2016/18)/Issue7+TC2
> Issue ID:                   1641
> Category:                   System Interfaces
> Type:                       Clarification Requested
> Severity:                   Editorial
> Priority:                   normal
> Status:                     Resolved
> Name:                       Bastien Roucaries=20
> Organization:               debian=20
> User Reference:             =20
> Section:                    sys/socket.h=20
> Page Number:                Application usage=20
> Line Number:                sockaddr_storage=20
> Interp Status:              ---=20
> Final Accepted Text:        see
> https://austingroupbugs.net/view.php?id=3D1641#c6238=20
> Resolution:                 Accepted As Marked
> Fixed in Version:          =20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
> Date Submitted:             2023-03-18 07:52 UTC
> Last Modified:              2023-03-30 15:22 UTC
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
> Summary:                    sockaddr_storage is not alias safe
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
>=20
> Issue History=20
> Date Modified    Username       Field                    Change        =
      =20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
> 2023-03-18 07:52 bastien        New Issue                              =
     =20
> 2023-03-18 07:52 bastien        Name                      =3D> Bastien =
Roucaries
> 2023-03-18 07:52 bastien        Organization              =3D> debian  =
       =20
> 2023-03-18 07:52 bastien        Section                   =3D> sys/sock=
et.h   =20
> 2023-03-18 07:52 bastien        Page Number               =3D> Applicat=
ion usage
> 2023-03-18 07:52 bastien        Line Number               =3D> sockaddr=
_storage
> 2023-03-18 07:53 bastien        Note Added: 0006207                    =
     =20
> 2023-03-18 07:53 bastien        Issue Monitored: bastien               =
     =20
> 2023-03-20 13:20 wlerch         Note Added: 0006208                    =
     =20
> 2023-03-20 13:38 bastien        Note Added: 0006209                    =
     =20
> 2023-03-20 23:06 steffen        Note Added: 0006211                    =
     =20
> 2023-03-21 12:01 hvd            Note Added: 0006212                    =
     =20
> 2023-03-21 23:09 sam_james      Note Added: 0006215                    =
     =20
> 2023-03-21 23:33 steffen        Note Added: 0006216                    =
     =20
> 2023-03-22 09:42 bastien        Note Added: 0006217                    =
     =20
> 2023-03-22 21:56 steffen        Note Added: 0006227                    =
     =20
> 2023-03-30 15:20 eblake         Note Added: 0006238                    =
     =20
> 2023-03-30 15:22 eblake         Interp Status             =3D> ---     =
       =20
> 2023-03-30 15:22 eblake         Final Accepted Text       =3D> see
> https://austingroupbugs.net/view.php?id=3D1641#c6238
> 2023-03-30 15:22 eblake         Status                   New =3D> Resol=
ved    =20
> 2023-03-30 15:22 eblake         Resolution               Open =3D> Acce=
pted As
> Marked

Thanks for taking care of this bug!


On 3/30/23 17:20, Austin Group Bug Tracker via austin-group-l at The Open=
 Group wrote:
> On page 386 line 13115 section <sys/socket.h> DESCRIPTION, change:
>=20
>     When a pointer to a sockaddr_storage structure is cast as a pointer=
 to a sockaddr structure, the ss_family field of the sockaddr_storage str=
ucture shall map onto the sa_family field of the sockaddr structure. When=
 a pointer to a sockaddr_storage structure is cast as a pointer to a prot=
ocol-specific address structure, the ss_family field shall map onto a fie=
ld of that structure that is of type sa_family_t and that identifies the =
protocol=E2=80=99s address family.
>=20
> to:
>=20
>     When a pointer to a sockaddr_storage structure is cast as a pointer=
 to a sockaddr structure, or vice versa, the ss_family field of the socka=
ddr_storage structure shall map onto the sa_family field of the sockaddr =
structure. When a pointer to a sockaddr_storage structure is cast as a po=
inter to a protocol-specific address structure, or vice versa, the ss_fam=
ily field shall map onto a field of that structure that is of type sa_fam=
ily_t and that identifies the protocol=E2=80=99s address family. When a p=
ointer to a sockaddr structure is cast as a pointer to a protocol-specifi=
c address structure, or vice versa, the sa_family field shall map onto a =
field of that structure that is of type sa_family_t and that identifies t=
he protocol=E2=80=99s address family. Additionally, the structures shall =
be defined in such a way that these casts do not cause the compiler to pr=
oduce diagnostics about aliasing issues when compiling conforming applica=
tion (xref to XBD section 2.2) source files.

I will add a CAVEATS section in sockaddr(3type) covering this, and will
CC you just to check.

>=20
>=20
>=20
> On page 390 line 13260 section <sys/socket.h> APPLICATION USAGE, append=
 a sentence:
>=20
>     Note that this example only deals with size and alignment; see RATI=
ONALE for additional issues related to these structures.
>=20
>=20
>=20
> On page 390 line 13291 section <sys/socket.h>, change RATIONALE from "N=
one" to:
>=20
>     Note that defining the sockaddr_storage and sockaddr structures usi=
ng only mechanisms defined in editions of the ISO C standard prior to the=
 2011 edition (C11) may produce aliasing diagnostics when used in C11 and=
 later editions of the ISO C standard. Because of the large body of exist=
ing code utilizing sockets in a way that was well-defined in the 1999 edi=
tion of the ISO C standard (C99) but could trigger undefined behavior if =
C11/C17 aliasing detection were enforced, this standard mandates that cas=
ts between pointers to the various socket address structures do not produ=
ce aliasing diagnostics, so as to preserve well-defined semantics. An imp=
lementation's header files may need to use anonymous unions, or even an i=
mplementation-specific extension such as a <tt>[[__may_alias__]]</tt> att=
ribute, to comply with the requirements of this standard.


I'm not sure how aliasing rules changed from C99 to C11.  Wasn't
aliasing already in C99 (and also in C89)?  I believe this was
covered by 6.5.7, which is the same in both C99 and C11.

<https://port70.net/~nsz/c/c11/n1570.html#6.5p7>
<https://port70.net/~nsz/c/c99/n1256.html#6.5p7>


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------3NMCCT2cnlyyepGnk0gWbxKg--

--------------qG5BbtKpzDz0wXGthq07KSrq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQlt/oACgkQnowa+77/
2zK/Xw//R476KhHLXLzONJjOFTiPdQi4OFXQt7oYeLrQNUAC94pw7v7sFPVZyx3G
VqneU58PPcHWu5h/QavGjpawXVdlLBtuqT+thW4Hl+qBcUnM20rJv2o3YkX6apvx
m2mzLiCQK8B748WEU10hFVWP8zrorGO/g4HrbbMP9efi+53i8AXCgdRFDRRTkakB
F3bcySfJNh8f7DHXp6epTuRXxgYGjyyAlV4XoZzlflOPx8A6ATtVdRuagi5mPtHM
BhuosjBNrPT5Jlc9u7AcTXa4BLFpaJru68tZdCkOIVyVp409df7ioCjMkTUa2wkW
gdpJbPa0rsGeAs9R6ltBuBf5nUhVuCdW3XYLpo6F9+q+fANr8llkyItuzRvU0R97
lpkWMiwlRKba7WxZ1dNE+MXHAJgm8fMh4DuZtqG5hoWxJM3Drthb0UWvetyQnqSn
l+fDAATHn9yA2+N53qVTL3kAmMkgC7XkMRt8hrBxprJPzzWKtA+inTJEWBhBKk9m
k5XrXm96KfinNjKAszdvJlswxFU3m0BJ5pc7SMXwqV68ctYqFUyKoO5yhHulUYCb
FLEGIKUQ1hKowiNZbmYaR2I99blZW6yG8t0+AKHL67HK+mur29cg2+JTSWWtxBbh
RZ071P2iAzEJDwUxIBRiBge5LdJGDuG7Aq5hjzXsTpF9H4z0U9c=
=Tt4x
-----END PGP SIGNATURE-----

--------------qG5BbtKpzDz0wXGthq07KSrq--
