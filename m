Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 570C56B14D5
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 23:16:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbjCHWQN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 17:16:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230111AbjCHWQJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 17:16:09 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73E7B8483B
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 14:16:07 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id az36so10711490wmb.1
        for <linux-man@vger.kernel.org>; Wed, 08 Mar 2023 14:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678313766;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ljhSiFbi6jN4d78xla/1tz58lxV4gA4F7mDpGsgUnM=;
        b=j+hCZqSoxWanbCBDmp5CWMIAvYuCIZeIaS4C1F1qfmvuSt52ffxK2HPxqMxDH/xyGO
         kg/oP/nw46bjejvvE3THRlHWDcq1f+5//tey7cB/7Vh6v/Z1XhkZZhuazcRyN+M+48pm
         dqpcpPO/DfxbpJbc6jP7KXTIUz8Pk737wPsC1zzZLhUHlwpyuBtvMdTIHHFjEDIhAm+V
         ClN4SMAVgErsHE3iFr3GS36RAluQP7cMRq1VBeWa5+kLA7FLQqlU++opyPCEPFxbpwfI
         SSfEJxJ12EzpGyC2ZbVrzpiZUwDOWRlm4MK3pRmkRcU5TNSpsFLSvRUe2ESVmA0DxMZT
         sXVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678313766;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2ljhSiFbi6jN4d78xla/1tz58lxV4gA4F7mDpGsgUnM=;
        b=KfdMnmEaMQ4F5qQi3UeoMNTyVqsYrx0AUE8afm28MW3jt3HXBSKZutjLytkqK26Jvt
         9NabhnF+Am/aCK0+EXxrXnkgOJVGm6+kIJ/HjwXmF6v2fskdHVFbkAggsa79K+zFrigb
         8xvWQ/oz2YuMrso8/lC2zs8uCDfBqb+l1fSGkCnKJbf90WZ+rOTagtQ4YdzVG/znMO3+
         OfMiLOaJ6LTzRECF7uzcENong8Nt+0td9EFoGfhRsaStvqUBEsyhX7CZI+drWJiAIoKA
         0mMBfuYH9mOG2F00OC72ReDpmx/F4HZYECIlfHWBx01irdkcurY4zODc/SAHiVI0LWwB
         t0RQ==
X-Gm-Message-State: AO0yUKVRfrkG5jUNtIzZruvfzStTZLae2ZJmsu8gzy6v2F0NSXe2DNQu
        NLOx7KjvaUJcxefT9TWfnMw=
X-Google-Smtp-Source: AK7set+VzpR0Xvq3Wb0huZgAA3dEIraAFZtrRqou0qLKcOr5FFqaK1AUrVA+ix65zvG0T1duyRRJxg==
X-Received: by 2002:a05:600c:3548:b0:3dc:5390:6499 with SMTP id i8-20020a05600c354800b003dc53906499mr18321776wmq.1.1678313765755;
        Wed, 08 Mar 2023 14:16:05 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s18-20020a05600c45d200b003e20a6fd604sm722456wmo.4.2023.03.08.14.16.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 14:16:05 -0800 (PST)
Message-ID: <08a72d2c-e7cb-4390-2cb1-7601b344ce9e@gmail.com>
Date:   Wed, 8 Mar 2023 23:15:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: mandoc(1) warning in tzfile(5) regarding //
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <884cb5d0-27ce-a5ca-b449-972021e62e92@gmail.com>
 <7c3294cf-e3d0-c716-d1c0-5b6c5c757d7e@cs.ucla.edu>
 <7eb92df5-6c87-8384-c4a8-2a00eabf1c8e@gmail.com>
 <66ef5b92-6e19-8bea-2840-6c2f0240d225@cs.ucla.edu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <66ef5b92-6e19-8bea-2840-6c2f0240d225@cs.ucla.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Op4gIUPcNOUSeR35z0u3gkjs"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Op4gIUPcNOUSeR35z0u3gkjs
Content-Type: multipart/mixed; boundary="------------1hqPtCC5sEzKoVgu6L0Ym0eC";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <08a72d2c-e7cb-4390-2cb1-7601b344ce9e@gmail.com>
Subject: Re: mandoc(1) warning in tzfile(5) regarding //
References: <884cb5d0-27ce-a5ca-b449-972021e62e92@gmail.com>
 <7c3294cf-e3d0-c716-d1c0-5b6c5c757d7e@cs.ucla.edu>
 <7eb92df5-6c87-8384-c4a8-2a00eabf1c8e@gmail.com>
 <66ef5b92-6e19-8bea-2840-6c2f0240d225@cs.ucla.edu>
In-Reply-To: <66ef5b92-6e19-8bea-2840-6c2f0240d225@cs.ucla.edu>

--------------1hqPtCC5sEzKoVgu6L0Ym0eC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 3/8/23 22:54, Paul Eggert wrote:
> On 3/8/23 11:44, Alejandro Colomar wrote:>> I still see the warning.
>=20
> Oh well. Looks like a mandoc bug; maybe it can't tell that we're in a=20
> macro so '\\' is OK, indeed expected.

I'll report this in mandoc(1) then.  Thanks for confirming.  Although
maybe this is expected of mandoc(1), since it's not a generic roff(7)
interpreter...  I CCd Ingo (mandoc(1) maintainer) in case he's interested=

in the bug.


>>> -.TH tzfile 5 2022-09-09 Linux "Linux Programmer's Manual"
>>> +.TH tzfile 5 2023-03-07 Linux "Linux Programmer's Manual"
>>
>> I don't like this TH line
>=20
> That's the Linux man page's .TH line not the tzdb .TH line.

I know :)

> I merely=20
> used the format that was already there. The tzdb .TH line is merely ".T=
H=20
> TZFILE 5". So you can edit the man-pages .TZ line any way you like.

I prefer if we come up with some good upstream TH line that I can keep.  =
:)

>=20
> Come to think of it, the tzdb man pages aren't systematic about .TH lin=
e=20
> capitalization. Some use uppercase (the style in 7th Edition Unix), som=
e=20
> lowercase (more common in recent decades). Let's go with lowercase.=20
> Proposed tzdb patch attached, and installed in the development=20
> repository.

That patch looks good to me.  If you use these:

Reviewed-by: Alejandro Colomar <alx@kernel.org>


>  If mandoc complains about this, that's mandoc's problem not=20
> ours.

Indeed.  It complains, but Ingo was in favor of removing that warning, an=
d
modifying their own pages to use lowercase too.

In the Linux man-pages I'm ignoring that warning with:

! (mandoc -man -Tlint  man5/tzfile.5 2>&1 \
   | grep -v 'STYLE: lower case character in document title:' \
   | grep -v 'UNSUPP: ignoring macro in table:' \
   | grep -v 'WARNING: cannot parse date, using it verbatim: TH (date)' \=

   | grep -v 'WARNING: empty block: UR' \
   ||:; \
) \
| grep '.' >&2

>=20
>=20
>>     Would you mind specifying your own project and version upstream
>>     so I could keep them untouched?
>=20
> I can see problems with that. First, it's tzdb commit=20
> 12b48faf10c265ee3ea1aad8cdb5c8239eea65a0 and I doubt whether man page=20
> readers want to see that. We do have a mechanism for converting that=20
> commit ID to the quasi version number "2022g-64-g12b48fa" but this quas=
i=20
> version number depends on development history not merely on current=20
> state, so it has its own issues.

Makes sense.  In that case, I suggest using the project name without a
version.  How about the following?

=2ETH tzfile 5 "" tzdb

(or alternatively:)

=2ETH tzfile 5 "" "Time Zone Database"

The "" (3rd field) is for the date, which we don't want to be updating.
The 4th field has only the project name, but not the version, since it
would also be complicated to update.  (You could use 'tzbd' or "Time
Zone Database", whatever you prefer.)  The 5th field is also missing,
since the default value is good enough (for section 5 it's "File Formats
Manual").

If you use that line upstream, I'd keep it untouched in the Linux man-pag=
es.

>=20
> Another way the files differ is in the lack of=20
> "%%%LICENSE_START(PUBLIC_DOMAIN)" and "%%%LICENSE_END" boilerplate=20
> upstream.

I removed it in most pages.  Most pages now use SPDX-License-Identifier.
If that's the only remaining difference from upstream, I'd also remove it=
,=20

> I've been reluctant to do that upstream since I expect each=20
> downstream user has its own format for comments regarding licensing,=20
> SBOM, SSDF, SCA, and so forth (and if you don't know what those acronym=
s=20
> mean then I envy you :-).

I don't :-)

$ wtf is SBOM
Gee...  I don't know what SBOM means...
$ wtf is SSDF
Gee...  I don't know what SSDF means...
$ wtf is SCA
Gee...  I don't know what SCA means...
$ dict SBOM
No definitions found for "SBOM", perhaps you mean:
gcide:  Bom  Swom
wn:  som
vera:  bom  som  sbod
foldoc:  bsom  som  sbm
$ dict SSDF
No definitions found for "SSDF", perhaps you mean:
vera:  sdf  ssf  ssd  sadf  sidf  srdf  sscf  ssrf  ssda  ssdc
  ssdd  ssdp  ssdu
foldoc:  sdf  ssd


There's a dict(1) entry for SCA, but I don't think it's related to
this :).

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------1hqPtCC5sEzKoVgu6L0Ym0eC--

--------------Op4gIUPcNOUSeR35z0u3gkjs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQJCRwACgkQnowa+77/
2zKU6hAAp+4oqqQ06hBZAsbLZl0nM9GjSPn+mSuUIP7HvoKy15UAWFYjJ66LvAy7
qNSWKW5v8N5SIKAl4/qnSgormq4J1lnGXYuy9eNkKVgUolp5y7kxd+mRfuF0LTSH
TNUL6K1p0QWzG8AXEilVqJcG7Z5U1SnAKFQFqpmpHJw51eSMbUoazt/2oHqN0NvH
1PIfF01hsYlL85hpMHzsmlz0JnOI1jLusklOhceFBWMv14wy32OTbwH61d/x7CdM
O+TO3BxSbNjPbLFf8bV1l6+kdQ9PdeXYWvswR4rb3AJvofNGgDOXrVrHxEYeKltP
zmuzW+FX0/rgJ/sndzkoSJHk/Trus0c4uhou5+yRIldmKwOnuTsOcvjpk5dE6KOv
KOTGdgWVTxFFO6SXsyGK0HxWHyVoVdT55t4Phui8UDffcCb7yBnt9AmgYO6096N1
31fMk1GNtdchw3By5YYPsLJ2Ix7qtopOYvPIboRjV0aQ1J6DzWu/hQCc3kfGXmqP
2vn80Arkxi37nChe7/xN4W570j8ZF8yN9QEBbiMZzkH8/Rywfi9MTmtpgziG1oWa
+eYVrZX/8JrkS8mpbINLF/POHpa9NVxmlTRY+QoRLV+dnTXxVvgTIGw39q3PfBUa
nYdzSXRGwFVvMcMZPVLfNS8hDBd97wbnjxN2jcOL3AMitUNyXbs=
=SKE2
-----END PGP SIGNATURE-----

--------------Op4gIUPcNOUSeR35z0u3gkjs--
