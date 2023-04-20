Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6B286E9F24
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 00:40:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231302AbjDTWkX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 18:40:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231728AbjDTWkW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 18:40:22 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA13513E
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 15:40:20 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-2f6401ce8f8so659553f8f.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 15:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682030419; x=1684622419;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f2m6TmplmMcnvpT4IXC/7VoiJgEyKDogJ/XQTp6Ozdw=;
        b=XZqfG3+rSydjKTDdadusHjYjYnAHY9exfKRyDptwMEZLfUL7RyiDA/TCaMJpXbxlnO
         /Jsbx56OaN/5TH79uqtXTvAQamH+hCCK2nmgMNc7f+jGJH4Ov+VdiW4LasEtn9fw2I5+
         337kXVV8ebjscxjYinvDuQ+4ed4Zr3g5in+oodkiz1IstyiQYtTtS5jAiKZImwgSvbpC
         mur0kSzOa7KavmacMyY8+JMefMlQTy5MVCMtMLKjA61q3XLIm/bLZyIPrHEmoHv7jzcG
         qpnRusJBhul5hMVL+FWNc8kqSZDepLxT8R6KAio+XUYFX1XCnI9aj3SO6NfQxWPnHfMq
         sjoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682030419; x=1684622419;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f2m6TmplmMcnvpT4IXC/7VoiJgEyKDogJ/XQTp6Ozdw=;
        b=OvSPfdI+IAOZWb31bwFOAj2bJN0+ZdBCPDxSTPU8EF8UJpAgFvbedg2GRRH3i+zm2B
         RuS55L376x1lTPPZsp01pLtPu+aCu7pTQb04y0afNG2uPqdqoXRCg5tEH6NFHWIRABCJ
         uQ0QHh+iRMFhiPjZq/br+dyRyY3tBROfH5yaNI6qMoyUS/0+VRIm83ppONEO/AZMQzcj
         Z00IU7d9Uvq3n2ch+zC3LIrtzPdwU0/EWjAOLOsTDFDrmFY8ZdlsfYvCuV9s89rsnSb8
         pzrF/JmnaHPTi7mwgQauDmedY6lwisI3TbtPtg9+uKexzVbcFfeZqFzi3Vo4FfWIlayN
         G8pw==
X-Gm-Message-State: AAQBX9cAJx6BOrdyjWwPGtlhVQ24O6fPQRDi0dErlwmftBgiFAk1iRMi
        sK7LSsEWeiXzn0N1a0+X7sg=
X-Google-Smtp-Source: AKy350ak+dJWAnOGviAVKvsy0x2kFYauddMXfxOCwWHKOA0jiS8ZQIIX7h9Z3Yx19eHZne5VCg5Oqg==
X-Received: by 2002:a5d:42c7:0:b0:2f7:8779:3bc3 with SMTP id t7-20020a5d42c7000000b002f787793bc3mr2426593wrr.11.1682030419126;
        Thu, 20 Apr 2023 15:40:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e14-20020a5d500e000000b002cff0e213ddsm3001713wrt.14.2023.04.20.15.40.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 15:40:18 -0700 (PDT)
Message-ID: <445b603c-26d8-b94d-e211-b3021fd1f158@gmail.com>
Date:   Fri, 21 Apr 2023 00:40:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
 <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
 <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
 <20230420184208.ljcmvfgefe4manyz@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230420184208.ljcmvfgefe4manyz@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------F7MxOXHjg7jfYA2KXc9IdyQ8"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------F7MxOXHjg7jfYA2KXc9IdyQ8
Content-Type: multipart/mixed; boundary="------------EU0sZnP4gml8ELMvgYXBQHtT";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 linux-man@vger.kernel.org
Message-ID: <445b603c-26d8-b94d-e211-b3021fd1f158@gmail.com>
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
 <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
 <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
 <20230420184208.ljcmvfgefe4manyz@illithid>
In-Reply-To: <20230420184208.ljcmvfgefe4manyz@illithid>

--------------EU0sZnP4gml8ELMvgYXBQHtT
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 4/20/23 20:42, G. Branden Robinson wrote:
> At 2023-04-20T15:03:24+0200, Alejandro Colomar wrote:
>> BTW, another thing you might find useful is this:
>>
>> $ cat ~/.config/git/attributes=20
>> *.[1-8]* diff=3Dman
>>
>>
>> And then in your .gitconfig:
>>
>> [diff "man"]
>> 	xfuncname =3D "^\\.S[SH] .*$"
>=20
> Nice trick!  How on Earth have I been living without this?

I don't remember how I found this obscure git(1) configuration.  I
think I was reviewing some patch at work and the hunk was complete
garbage, and we pulled some threads...  Itchy and Scratchy :)

>=20
>> You may want to use a regex that also works for mdoc(7).
>=20
> I reckon you could sweep up mdoc(7) pages as well with:
>=20
> 	xfuncname =3D "^\\.S[HShs] .*$"

Already fixed(:

<http://www.alejandro-colomar.es/src/alx/alx/config.git/commit/?id=3D4e77=
2e3e3fe0785d773cf702b115dfc3d20d90d5>

>=20
>>>>  .BR ntp_adjtime ()
>>>>  are equivalent but differently named.)
>>>>  It is a bit mask containing a
>>>> -.RI bitwise- or
>>>> +bitwise OR
>>>>  combination of zero or more of the following bits:
>=20
> Discussion of Boolean-algebraic operations is common enough among
> programmers that it might be a good idea to settle on a specific style
> recommendation for typesetting them.
>=20
> I think either quotation (e.g., \[lq]or\[rq]) or shouting capitals (OR)=

> are tolerable, the latter only because the few operators commonly
> mentioned have very short names (you don't see EQUIVALENCE much).

I'm used to seeing uppercase OR, AND, NAND, XOR, and similar names in
Electronics.  I'll vote for that.

>=20
> I would counsel against changing the type face for them (i.e., no bold,=

> no italics).
>=20
> Regards,
> Branden

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------EU0sZnP4gml8ELMvgYXBQHtT--

--------------F7MxOXHjg7jfYA2KXc9IdyQ8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBv0sACgkQnowa+77/
2zJIHw//exXFYiH8BgTUUMz0/AupwSrnOyV07PMcgqFMcOvAfx4PF7XEBoSe/T5v
D27B8jKD101KS6egqD2ObGEAWUCs4SXF8dPLBvQ05lNgEVgC/4faOGivcYT+jco0
rBAR2W9dK5gvHbv+RxDN6/ZFqtLqeHSAxZJtz7kvH1UbTYiGVT7ZyNXTVeUUHVEL
LPLEFvylMPKcdbvn1NzsGlMtUpT7JUlir33uuA4FHNrgQUfJ1fIDm3Vq9NqhH974
cUYe854DCTtNLGyeTy1AhnUHyVb/nFvLxs96qxj8QptchSr1ng3Yde5GS9JOsNB+
rk/1kEYzeEI1ZjT4LvSIsxwr5JVtWSzHTgOXdQFUB0mHcgHvQAfJ3cV+U6yWjMZm
sfUoWlfJy/MKwyNrCfQM9i69U4kqDa1CkVSpVKaUYo7IejSleWK9/oBUtez9+LBr
/eVMWAVtDVbfrWEV5aQTfUQzNPr9ZKFRtFS0uSVhh0Is4Rh8tASEpeMX08oGM9+T
h0OP7e/8aFAZQblF8uN5E87JQaIjx5MznhMkDdtojKMuGRCEye70gBxIxK/5Bz5A
jYXRVYEzZph9l6QnWjdkMAIB9i57nfm7qkuAJ/pxlnmYA6RH2BWG9eimcrGWsJrw
mi3flxt26ait0e59erwzJ/SmJX9+1at8QFW1E0LjHZU/q+YN8MU=
=XSD8
-----END PGP SIGNATURE-----

--------------F7MxOXHjg7jfYA2KXc9IdyQ8--
