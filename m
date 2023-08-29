Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DC1778C1AF
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 11:44:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234880AbjH2Jnr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 05:43:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233691AbjH2Jna (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 05:43:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE8D7E9
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 02:43:27 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5FFB4616C0
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 09:43:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BD33C433C7;
        Tue, 29 Aug 2023 09:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693302206;
        bh=j5wFKcChIszSsAt/Bqg8ct8Ni8QoA3pcBAXPhgDeWyk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=jSj8C5oP7ef4nEqrQ7Xt5DIDCwax56IgZL7tK5FbvmZQJ2ixN02vorJUOTk32dE2U
         qnfDclgqXT+79xisGEg8Iayk8+g063TSsh5sZE7OIxkE4yhWwTJdzV9dlV3AB/V7MJ
         ZlF/4NXYUvN222JfgH2IW9Q7IgnSNJeJ1S5DHPHRMzY+EjpZRokbQdyyeX36ZYRmvV
         dDJlg0f2znKzqDrVOR9oKhDzbEBs0SqihcnFWgaM+F2d6qamN2hiPRdcOf9szVGaAD
         m6IUaVk7+T71we48DKlwQaz+8VHyK8qeiuqRESpaNWbDjTQ1LThWXmUTl5pb9z+5oK
         PkL3cLE+7r8FQ==
Message-ID: <8be479e0-c851-3442-e6d3-9e3ff39458ae@kernel.org>
Date:   Tue, 29 Aug 2023 11:43:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] mmap.2: fix missing text
Content-Language: en-US
To:     Avinesh Kumar <akumar@suse.de>
Cc:     linux-man@vger.kernel.org
References: <20230825155950.17010-1-akumar@suse.de>
 <284f129a-5d21-76fa-7cf5-851512ee5914@kernel.org>
 <7094633.DmTEyPuAzL@localhost>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <7094633.DmTEyPuAzL@localhost>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2Pk4V1GUricBvm0y7gRlvbxz"
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------2Pk4V1GUricBvm0y7gRlvbxz
Content-Type: multipart/mixed; boundary="------------ONegCFpz3leDLDFvPjVYJgij";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Avinesh Kumar <akumar@suse.de>
Cc: linux-man@vger.kernel.org
Message-ID: <8be479e0-c851-3442-e6d3-9e3ff39458ae@kernel.org>
Subject: Re: [PATCH] mmap.2: fix missing text
References: <20230825155950.17010-1-akumar@suse.de>
 <284f129a-5d21-76fa-7cf5-851512ee5914@kernel.org>
 <7094633.DmTEyPuAzL@localhost>
In-Reply-To: <7094633.DmTEyPuAzL@localhost>

--------------ONegCFpz3leDLDFvPjVYJgij
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Avinesh,

On 2023-08-28 15:28, Avinesh Kumar wrote:
>> Was this text accidentally lost in some patch, or was it never added?
>> If it was there once, please add a "Fixes: ..." tag for it.
> I am not sure if it was ever there.

It was never there, it seems.

$ git show 090fdddb43 -- man2/mmap.2
commit 090fdddb4342f92a1dbeba687462f4bcee816232
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Mon May 17 15:31:08 2021 +1200

    memfd_create.2, mmap.2, shmget.2: Document the EPERM for huge page al=
locations
   =20
    This error can occur if the caller is does not have CAP_IPC_LOCK
    and is not a member of the sysctl_hugetlb_shm_group.
   =20
    Reported-by: Yang Xu <xuyang2018.jy@fujitsu.com>
    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

diff --git a/man2/mmap.2 b/man2/mmap.2
index 03f2eeb2c..4ee2f4f96 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -628,6 +628,18 @@ .SH ERRORS
 The operation was prevented by a file seal; see
 .BR fcntl (2).
 .TP
+.B EPERM
+The
+.B MAP_HUGETLB
+flag was specified, but the caller was not privileged (did not have the
+.B CAP_IPC_LOCK
+capability)
+and is not a member of the
+.I sysctl_hugetlb_shm_group
+group; see the description of
+.I /proc/sys/vm/sysctl_hugetlb_shm_group
+in
+.TP
 .B ETXTBSY
 .B MAP_DENYWRITE
 was set but the object specified by

>>
>> Also, proc(5) was recently cut into little sashimi pieces.  You want
>> to refer to proc_sys(5).
> Ah.. Thanks for pointing this out, I just checked that thread. I'll sen=
d the=20
> updated patch if you are fine with no "Fixes:" tag for this.


Please add a Fixes mentioning that commit above.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------ONegCFpz3leDLDFvPjVYJgij--

--------------2Pk4V1GUricBvm0y7gRlvbxz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTtvbYACgkQnowa+77/
2zI63g/+Mboh9HMZxfFneeioONYUEu9CNJ7DjjIIFQaB6nmKmKPci7iTSZ3WJeMd
0htuWDSD+w6MFp1mK+KQjg7F1XlHd3gNcc6W8aqk/VAny7ASlRNAtALzNZ5j21w6
aURlN8NWn34VQ/kx66PRagjh4edZDhscL7YgIk7P2kb5w1stMF/kKXMxTUCOfBck
59p3wRR0rPjHBypq1VAt3ZP6lJRcs+YwDqx0XRlSNcHE6MBdHD88Tdvcu/ZbSJuX
GF6LtZyxxMSWEbF6mOaq2aHajbPkAded5kuUds5B5JYSq2aBFyb7LtX0tHNjkJGK
NNGlmhz9VsRPpOKLhSHi9gFf/lbGiDHIdPstj3He2dk0DvdAKvBBlCdv01EFFOKR
OdDSHNnylXhUYbIuHu4/ZIJgano+LVmWWV4PL8K7+LdcbNqPQVWGlANxchsDdb4w
zS99qUyBR6C2V3FxJ/yYlTgkq1vN18/aYtGMHG9442PSTAkcoIvroU0Ft/8fVEWo
eT+XJnHb3KTZrU//SbaeoS1GyOovw0yCFppn/bzW6ONzPayzYVxISF6EN6OzWtVg
kai/95IdaZk6WJhwTmAqd3XrMmswXsQLq/BV2Kqh5LwmrfNQhkHD6TFvNs6GNpOP
c4YsrURBmpboBy2di5wziLKW8S2onU2aOTZYqiAc2QAPha1+J5U=
=P9mq
-----END PGP SIGNATURE-----

--------------2Pk4V1GUricBvm0y7gRlvbxz--
