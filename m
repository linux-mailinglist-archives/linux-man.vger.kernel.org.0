Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 246706B65F0
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 13:18:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbjCLMSz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 08:18:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjCLMSy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 08:18:54 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 483DF4BE80
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 05:18:52 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id t15so8913684wrz.7
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 05:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678623531;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xBSXyZqSALCAipDRrkQmJv8Vr3nebsncArnSgXKsXp0=;
        b=I/SM8lRXqFHnEAItZ5n4ktCKyY+KoaYjeKzlaY/k9bI6cLRRJIziEv88ke2ssmJ1Ce
         uNBeds68zP+DOkYAGjABOOHAZ/sC7HvA2NEEKrCOTYfJRZ8eddPMiC2HWqV3+FyE2Nnx
         ZkapGL2pDA158bNMg2xHvNyttPUmbtiq5a/6fporzC/JN6GHIq9qdylO/FfPpAasJmRP
         CQ0q3sV42AOBMlXlM8Dyrk7GAbsgwMzURQBM1j9kcVpewLkh9P2QytYCT7qj64JhvfcX
         0ttZ6zLFWuio7VNcfazFAuTOgb1v6FwVI65G4bM+D8jOOAQN1CrXaTV6LmTpGY1VByth
         LBHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678623531;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xBSXyZqSALCAipDRrkQmJv8Vr3nebsncArnSgXKsXp0=;
        b=VHSxQyQLpKIHgahX1G+uQlL/wBkca4XkUne85jA6heTFLqw1k4WLnia0w3UfzXt1zl
         Eawz4rCoPRirbvdt393uVJ+yYvOByvBDyZuWy5F+Q8r9JOBwwHyDm+q25we3jNx/Cvk7
         RiYSBKRj6uthzbzuI2CgaV2vFwudx7yHDNUfV/u1grMkqRMK9i0toxSo6jjLPS6WOJ4l
         B5ADhrwzFeviUX62uwe9d6CiMB9GTo8nllsj5d+IF/+Z0MsQas0acKo2Mqfm/ZfFkza2
         GH2Y1id0BbrXe/Y3jwsG2g471ysuXT9DThGFcCy91jBG42yAUdF/7jIx5kZKPWTiFHTN
         qeSw==
X-Gm-Message-State: AO0yUKWR/kgGNTLY7dmTkJxEftrAvF92rd7KCfMaSKLodelqveHcWoG8
        Qs5bh68YlS0hSgg6NqyGu9E=
X-Google-Smtp-Source: AK7set81BzyzcdxgcbLGN3WJcIn2Pmpd+rX2JKzDFTc9phsAdEwZjQukkFW5XrDxdnNWl7EUglEO4A==
X-Received: by 2002:a5d:6151:0:b0:2c7:1a22:411 with SMTP id y17-20020a5d6151000000b002c71a220411mr18364179wrt.17.1678623530722;
        Sun, 12 Mar 2023 05:18:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n9-20020adfe349000000b002c55de1c72bsm5070729wrj.62.2023.03.12.05.18.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 05:18:50 -0700 (PDT)
Message-ID: <93252839-1087-51c5-3349-bf558b3160eb@gmail.com>
Date:   Sun, 12 Mar 2023 13:18:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page session-keyring.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171356.GA4805@Debian-50-lenny-64-minimal>
 <d0d766d5-2482-9c1a-21f3-5d4dd2a8080e@gmail.com>
 <20230312045736.GB7927@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230312045736.GB7927@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VfLBcWPrgil3DP0Mfuqo2vUH"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------VfLBcWPrgil3DP0Mfuqo2vUH
Content-Type: multipart/mixed; boundary="------------v6831b44itrLByh9uZV6wBml";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <93252839-1087-51c5-3349-bf558b3160eb@gmail.com>
Subject: Re: Issue in man page session-keyring.7
References: <20230311171356.GA4805@Debian-50-lenny-64-minimal>
 <d0d766d5-2482-9c1a-21f3-5d4dd2a8080e@gmail.com>
 <20230312045736.GB7927@Debian-50-lenny-64-minimal>
In-Reply-To: <20230312045736.GB7927@Debian-50-lenny-64-minimal>

--------------v6831b44itrLByh9uZV6wBml
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/12/23 05:57, Helge Kreutzmann wrote:
> Hello Alex,
> On Sat, Mar 11, 2023 at 11:24:53PM +0100, Alejandro Colomar wrote:
>> On 3/11/23 18:13, Helge Kreutzmann wrote:
>>> Without further ado, the following was found:
>>>
>>> Issue:    PAM =E2=86=92 B<PAM>(7)
>>>
>>> "The session keyring is a keyring used to anchor keys on behalf of a =
"
>>> "process.  It is typically created by B<pam_keyinit>(8)  when a user =
logs in "
>>> "and a link will be added that refers to the B<user-keyring>(7).  Opt=
ionally, "
>>> "PAM may revoke the session keyring on logout.  (In typical configura=
tions, "
>>> "PAM does do this revocation.)  The session keyring has the name "
>>> "(description)  I<_ses>."
>>
>> I think I prefer not doing this change, since we already have a refere=
nce
>> to PAM(7) in the SEE ALSO section, and it would clutter the descriptio=
n
>> to add more formatting to it.  I'm doubting.
>=20
> Ok.
>=20
> Just that in HTML view, these are often turned into hyperlinks, thus
> people could easily continue reading (like in any HTML article). But I
> don't know how many people are actually doing this.
>=20
> (And of course knowing that PAM(7) even exists in the text is not too
> bad, either).

I decided to add a man-page reference in the first occurence.

Cheers,

Alex

>=20
> Greetings
>=20
>          Helge
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------v6831b44itrLByh9uZV6wBml--

--------------VfLBcWPrgil3DP0Mfuqo2vUH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNwyIACgkQnowa+77/
2zJMhA/7BgCw2S16fzzn6lkEWZ2KUqSbFEBpanzG4ll401bh+1BxSeIvNxRR2qg+
+D21uR9fF0GR+FLR6rKmlMHTEcpc2USYrVBYvtkOC2y+xpRPjyYMRl2AHQP1eklh
wjsQtRD9E4Ve+zudIPFQB9yU8073YZaM9kolF0IqCB5bmUBjtoCIQEAKOpvWBhrY
2PuznZB89dYEqlP5cxT+IJfhPfaf9IGax66N0m/hgQLeJKDYs1IsTXfPRoN+1q78
gYOpF1jexpmf5KdLxpGGMGMxUglb8GwuAbUlzD6bkGkp2fH+HHXcahJ590sYNTKT
lTPaZpVghRtKI8mZxfsf7czbW1gHzAXpOQcuioukYRe8P2uQI7Y2Tg4cfdPjxmbG
LMMSZQV2OWW43vhl18DohTuifdBlpHHkD5pNrkGhU97WI34+8DvqkMPvJ+zLHrrD
4l3tLPKVJ41UX7iyX8XCbv5XsGWATNOls4Tysw5idoQz+WvCq4myo3Fdv9z6dLAM
eECIlopCmmuBthA8tCBXz2CTO7qEMvsiKZZR5+jmCP77Iimo3RKXfmlUsSxFg0Yx
iA2TzWuTK0GwSIxonu9/8rGHN2rWvcNvD29TnMIZLzQ9ek3JChqTq4scyN8V2Yim
WywDNYuyCiccdvlVPbl+WtPHtdgESeDSMMX9xoLadTvq0BRpf3k=
=8CPX
-----END PGP SIGNATURE-----

--------------VfLBcWPrgil3DP0Mfuqo2vUH--
