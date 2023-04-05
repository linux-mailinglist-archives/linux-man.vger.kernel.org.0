Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C50B56D721B
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 03:40:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236695AbjDEBku (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 21:40:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236694AbjDEBkt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 21:40:49 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98ECB3ABC
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 18:40:47 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id h17so34607456wrt.8
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 18:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680658846; x=1683250846;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G+47JEKnuQ4zBld29PoJCMPsjXjFHfW6ooUW2NkGpgc=;
        b=eLWN49h1PYDt0wV6tkAO1BFandZd4l2/zO216UA5oRS/Y5oIliqX9Z8DL0KPITvqN9
         cPxsFLQnT74DmDJ9X125ZfEqtqitGtzAJ+v+CNr2hU7Zgzs6VRc2sq4u/w6H0tYBiNdv
         IaJZvoX2qhww4+7HSuAFsuvHQqnQW+gmQKFPVs7DCosgNzrjXFg+b5u7eRLqj9O1C5qC
         FCiidT+x3vqzo2+netVBLZid5UMoIqRS8f9Cedz/EGVNhE1p56RhIve7F5nMQcuUJOVl
         DyekY/uQmEIzk6L2L1UJWVLJQs5bDoyAFv7MBMJwdU3RQ+PPo4SQ3t2baWzhSl0/RjwX
         WarQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680658846; x=1683250846;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G+47JEKnuQ4zBld29PoJCMPsjXjFHfW6ooUW2NkGpgc=;
        b=LJF0FlAbb+RWBXXqmavIIf63SCt6aLVwwpVzqZNXXlCw+J/9DLDsBSg0tBaYD9g5j/
         039Jd04PnaKl4pjIR8R0uULpqt8tldIKPDOmseyMatLYrWIs4tuL/OE/NrWZ50LpU4NU
         GRpDAomN+h1ZVoqB+QRw63kGM53NsiOZxB9Zi6sWg7KETGnUiFxcHIdIDtcxxHNGjA+F
         Mbp+TFZ4JZ3eayLbK6GTZQVjlc1re6Fpl4JvhfTRalLP91ZNwOIslgZf3VZsJmT3C3Pr
         6l64lMONv18C0luqMUa8/lQ3nJ78WFL3RwAmAnzghnXfPrC0mLm4FpeWRsnRG+m7Q4un
         GR6g==
X-Gm-Message-State: AAQBX9fOZceIFOcvsm5p0tLxNyB3GIPnsBPoR6OuxchLy3gPiDnEPaea
        DtPitzRtmcsVmr+xAP6XRU85oZnciNc=
X-Google-Smtp-Source: AKy350Z1iNwhfTBX+0giK0j8FCCa3wpu+XQ1tEv2hFW/kkDMD0k7DH75bMMd/+hcjrsUSyE+r9Dkog==
X-Received: by 2002:a5d:400e:0:b0:2e4:abb1:3e8b with SMTP id n14-20020a5d400e000000b002e4abb13e8bmr2943960wrp.25.1680658845917;
        Tue, 04 Apr 2023 18:40:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d9-20020adff849000000b002c56af32e8csm13585225wrq.35.2023.04.04.18.40.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 18:40:45 -0700 (PDT)
Message-ID: <d3bc8e72-bac4-7d10-785d-93e4ad9ad248@gmail.com>
Date:   Wed, 5 Apr 2023 03:40:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [patch] poll.2: tfix
Content-Language: en-US
To:     Enke Chen <enchen@paloaltonetworks.com>, linux-man@vger.kernel.org
References: <CANJ8pZ_g0Bq+9AH6iVjm_xJr3o5TEuhkEA0qRi4JNteUB+jfrQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CANJ8pZ_g0Bq+9AH6iVjm_xJr3o5TEuhkEA0qRi4JNteUB+jfrQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UonALQEyove7dV0Va5XD240T"
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UonALQEyove7dV0Va5XD240T
Content-Type: multipart/mixed; boundary="------------jrq7DACIS0MFT5jbNOp5YUFB";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Enke Chen <enchen@paloaltonetworks.com>, linux-man@vger.kernel.org
Message-ID: <d3bc8e72-bac4-7d10-785d-93e4ad9ad248@gmail.com>
Subject: Re: [patch] poll.2: tfix
References: <CANJ8pZ_g0Bq+9AH6iVjm_xJr3o5TEuhkEA0qRi4JNteUB+jfrQ@mail.gmail.com>
In-Reply-To: <CANJ8pZ_g0Bq+9AH6iVjm_xJr3o5TEuhkEA0qRi4JNteUB+jfrQ@mail.gmail.com>

--------------jrq7DACIS0MFT5jbNOp5YUFB
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Enke,

On 4/4/23 03:40, Enke Chen wrote:
> diff --git a/man2/poll.2 b/man2/poll.2
> index 4e26e62d4..5d2fa622d 100644
> --- a/man2/poll.2
> +++ b/man2/poll.2
> @@ -604,7 +604,7 @@ main(int argc, char *argv[])
>=20
>          /* Deal with array returned by poll(). */
>=20
> -        for (nfds_t j =3D 0; j < nfds; j++) {
> +        for (nfds_t j =3D 0; j < ready; j++) {

This is not correct.  The array is of size nfds.  ready is
just the number of entries in the array that have been changed,
but there's no information about the order in which they'll
appear.

If you compile the program with the current code, you'll be
able to verify that it works.  But with this patch, I believe
it will stop working.

Thanks,
Alex

>              if (pfds[j].revents !=3D 0) {
>                  printf("  fd=3D%d; events: %s%s%s\en", pfds[j].fd,
>                         (pfds[j].revents & POLLIN)  ? "POLLIN "  : "",
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------jrq7DACIS0MFT5jbNOp5YUFB--

--------------UonALQEyove7dV0Va5XD240T
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQs0ZwACgkQnowa+77/
2zKIhRAAqFhx0gpU2CdaMDXeIIqWtIXr8UdmzPVSas9z6ARZ+BE6o7TifjQCrJce
+Cd1xXeja20c1N0haokz60miEIuaibYIRnoG1sGnb20O74yC+F+BjCgskuj7jGGB
V+qhBesLMPJpEXOmVdom2OJq1Nme/2gAT3MvCc76jx9pj/iemcfn+YqIiKwPshxD
b29zj4le6vpHLu5P0DQSxOXB1sJtcvjT3dkT+PfqTrk2+Pq9X/m7FjA7iCi1tD7q
wH5riM2JmK8VwHEWFB45MLawVGzOtaDT+S6rt7qFOk8R0TItkwOfbMSo1o0NXCS4
gbPIJwVFYftoJhWKjX5fGw6Mq1MV9vDzvpDMyznORqvMZpvyzpyQigSeBiaeXYTB
s/eszrBSssKf0ZWDdNu4fAf27xcAtnezanCVCUPVD4qs8v9SqokGzbLBTiGbfW4v
vzUp7Z+132f1ebnymt283AgzorbVktrVu99sAApBFEfuIX0Ml8NN+UflSh76bC2r
wi54OOTx8H2FAhIv+0ZuEV+/dUjovnGA21XQ5wq/nS1sMCkf6esec2KaVvE+XG9/
pB7DGI9NagEOrlWwBr224EbUkABO4dYdSSaGTw28OyaazmkmS3eSPiHNNGcBfZDt
s0n4ssrJEijrcSRn24EYjZHvuy5a9wydv1KG1idGFDH6d2PdH/s=
=wNs3
-----END PGP SIGNATURE-----

--------------UonALQEyove7dV0Va5XD240T--
