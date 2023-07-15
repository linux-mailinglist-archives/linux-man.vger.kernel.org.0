Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2038E754A10
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 18:13:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229472AbjGOQNk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 12:13:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbjGOQNj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 12:13:39 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5646430E3
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 09:13:38 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E894C60BC0
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 16:13:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E472C433C8;
        Sat, 15 Jul 2023 16:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689437617;
        bh=i0NfenT2zSIstWmAAZNHuBNRnZQtqiNeZSVqF4Nb7ec=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=advwsznAWQ3zXEOyncujeYHnE2R+m5mlrbXOcPzThSv0Y7oOvLCMTHRhf3zTsk9Ba
         K0g5qta60z0SwzyJInTo4SNCpdCRn2ouTnXqJ1wX0dX+oEPo+dwpQCQzg8mJU9vOs1
         x/sx1HESEoXh9ZehlRUUfZFRWYD9DaKDOdYyTq2S3FH+rZWbKkPgnXdJ7oX+5aL3ND
         K91E/eed9JIaN/J4YEB9pkM8WR7UhL9RJiFK1bmvuE5tYmgCX8KWsmXdmmP0GXohJQ
         wWHfSDvYTTEEJO6W4FaSXkrSznIP5InakA1xdBB5nL4QjrOWH9I5WBNWVdUUiBq+SJ
         qIrjy5p1SOS2Q==
Message-ID: <61009d70-8033-2e6d-7916-f45033398d7d@kernel.org>
Date:   Sat, 15 Jul 2023 18:13:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] Fix the man page
Content-Language: en-US
To:     Zijun Zhao <zijunzhao@google.com>
Cc:     linux-man@vger.kernel.org, enh <enh@google.com>
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
 <CAELULbcAtuqehXmDeRjOPtCOuriw9hrUU2Ndw8-i0Z=9GkbNzg@mail.gmail.com>
 <CAELULbfDFt2Z3T45_brzhWzL8182R=uxpHy_rSdgBSXpp+QQKQ@mail.gmail.com>
 <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
 <CAJgzZooCj9FcHwMam0TC_y6c33K8OFuWGGS0_-Ji+eEhLsXo_Q@mail.gmail.com>
 <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org>
 <bf4dd8ed-ded3-6fe0-d3fa-afa63164bc4c@kernel.org>
 <CAELULbcxcmRXCkXx3_q2WMb8eMHTGfRRw=kmsOCBr-YRauOgUQ@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAELULbcxcmRXCkXx3_q2WMb8eMHTGfRRw=kmsOCBr-YRauOgUQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AdX2WOaQfkIjJRwzXYoETEU6"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------AdX2WOaQfkIjJRwzXYoETEU6
Content-Type: multipart/mixed; boundary="------------uQjihAPkpnG7P1V04tLMCaCH";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Zijun Zhao <zijunzhao@google.com>
Cc: linux-man@vger.kernel.org, enh <enh@google.com>
Message-ID: <61009d70-8033-2e6d-7916-f45033398d7d@kernel.org>
Subject: Re: [PATCH] Fix the man page
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
 <CAELULbcAtuqehXmDeRjOPtCOuriw9hrUU2Ndw8-i0Z=9GkbNzg@mail.gmail.com>
 <CAELULbfDFt2Z3T45_brzhWzL8182R=uxpHy_rSdgBSXpp+QQKQ@mail.gmail.com>
 <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
 <CAJgzZooCj9FcHwMam0TC_y6c33K8OFuWGGS0_-Ji+eEhLsXo_Q@mail.gmail.com>
 <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org>
 <bf4dd8ed-ded3-6fe0-d3fa-afa63164bc4c@kernel.org>
 <CAELULbcxcmRXCkXx3_q2WMb8eMHTGfRRw=kmsOCBr-YRauOgUQ@mail.gmail.com>
In-Reply-To: <CAELULbcxcmRXCkXx3_q2WMb8eMHTGfRRw=kmsOCBr-YRauOgUQ@mail.gmail.com>

--------------uQjihAPkpnG7P1V04tLMCaCH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Zijun,

On 2023-07-12 01:48, Zijun Zhao wrote:
> Hi Alejandro,
>   Sorry for the late reply!

No problem :-)

> I made some changes(make the subject more
> formal, add a blank line, respect the80-column right margin and use -u
> to when doing git format-patch) and attached the patch below.

Thanks!

> But I am
> a bit confused about semantic newlines. I think I already start on a
> new line and use clause breaks to split long sentences? Do I
> misunderstand something? Thank you!

Here's your patch, modified to use semantic newlines:

+The kernel accepts null for both time and timezone.
+The timezone argument is ignored by glibc and musl,
+and not passed to/from the kernel.
+Android's bionic passes the timezone argument to/from the kernel,
+but Android does not update the kernel timezone
+based on the device timezone in Settings,
+so the kernel's timezone is typically UTC.

Does it make sense now?

I'll also comment a few things about the patch:

> +The kernel accepts null for both time and timezone.

We should use the 'tv' and 'tz' identifiers.  We should also use NULL.
I suggest:

The kernel accepts NULL for both
=2EI tv
and
=2EIR tz .

> +The timezone argument is ignored by glibc and musl,
> +and not passed to/from the kernel.
> +Android's bionic passes the timezone argument to/from the kernel,

Could you give an example of why bionic differs from glibc and musl,
and why it can be useful.  It is mostly curiosity, but it might be
useful to have it documented in the commit message.

> +but Android does not update the kernel timezone
> +based on the device timezone in Settings,
> +so the kernel's timezone is typically UTC.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------uQjihAPkpnG7P1V04tLMCaCH--

--------------AdX2WOaQfkIjJRwzXYoETEU6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyxaUACgkQnowa+77/
2zKKQw//cpEVUzeryokrt34TkxBw1c1RMv/6J0XakUN+pp/how5MvD604OBt2ZeP
O4aXWX72tsgNZPoaG0D2HliT0KU0XAo+EC2yK36I30TB0Hqni3o3AJ4lx2lSufxj
kYdlBf7vVBRu4a8/LTS9own/Ql06/Cs09yesvmXQ6LCAgYfPHxGo3bak2CVE3Dg3
s1rVfAxFMkot8XVcMFiWCHMou7TPSaqzTnB8XvTJLai2tpUUYd5NFgmtCr/eHrgp
a09/4lXGP9PupgTd/xA/wiT0xrUsaJXB8k+1S4pCBODiqJZPYyf5iVq8iBo6hEYl
ht7sr5M+EH9tITjKgWkWfVB1ABhaFs1iskcr9bGwt3/VP64UtfwAG+yEZ+hsSHOK
SLHMzYOIlYb5jCIqsvMTx8tby7TZoVml3SwEn4PvRNFA/AsFz9lmysteK4rG7Na/
Uv0xOms6rg8YruorV6VWEFou+FKecg8TaCikJFXuuNe63EVZu86dDH0BulYo6Y1/
h3XWb1JO6L14Wr9r7SN7y6lwCU14h9XY+M+MGxCOgcO6u0PlSMH6mXNZ7c6SKCjQ
LygYwDlaIjn9/2bIF4S3mt2Am3b8QUdbmZnAYN2mtlrgrsJKdhsz/bXEZQKI6KVj
WYn1nVxReAHQ/DS2qdZh+EvbLGjyUldF88G0dqhO4sQqSdGIk3w=
=ULx7
-----END PGP SIGNATURE-----

--------------AdX2WOaQfkIjJRwzXYoETEU6--
