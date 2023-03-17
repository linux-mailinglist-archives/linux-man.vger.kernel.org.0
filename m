Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3532D6BF38E
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 22:08:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbjCQVIe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 17:08:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229581AbjCQVIb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 17:08:31 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51292305EF
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:08:28 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id v16so5595797wrn.0
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679087307;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uNSNMUnbr+hE18xTc5eroMmVS+xNGre/NgH2QsePsho=;
        b=UPtv4oBiIfyjfJvhb7ecD3fqc7NkD7hev5AUg9rwNT37MAameCGKHC46/vbkpLHs4U
         Tdxfwu7dFN2+nriPjF/55MRk5oNfChpd+vnK1CTVq3JM+ccJ250KynMatMp5A1dOq6EG
         IM2GWP71y2xJ4S26dn/RV5h20L8qzEPlpKQpluELYXK0kQEahG/DImBhjZArK2QfCkyD
         dCVlsbwyJxzz+eMwGInlikTPlAeJvpVqirfizslUSrXBMtq0+6rAHh24YCI6DVInsjar
         J8CStS89RClQsnWK04o5qmw0AVulz5IMfjBL35jIg+C0CozH9CWmha0ao6ikzuk5aEj7
         1muw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679087307;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uNSNMUnbr+hE18xTc5eroMmVS+xNGre/NgH2QsePsho=;
        b=s8pkoMWEf5yXyj/cxss0OK1XLBLYlendWhmYlaZBkE/q8ztVwRcb/l9BfSDyzMHPuv
         kiEZS8dG7V/LpoZnmxludBTdZbn7a7Qf3CDP2ILBTxcgIERb6hXxXf12hyBzMFmCC5+i
         Sk0Gm7QlY5RPC+Hha8oWso1Alu5ATSxSMUlYoEVM4otwwbGnyG4OfA8QY/qivlBnXfQN
         Z6hdMJyE88+lNNZKfYaNXgdz6i1GjSCqeBjZZiCmACulksE84sMF0kaVq/QzD52HJVmy
         Tj0JBMKZauFDCkk+dQRZUOxp69wByihOe1P7jSeR64PYc3RK8qP5otSrg3iiId85N92Q
         +BOg==
X-Gm-Message-State: AO0yUKW6eL1vfoHs7WukGOMJxN7i0DbcVQysJVxfy6boWv4Bk1fJB7Aw
        rbXa9g3+1+2OZAcg/tM6P+yDZgrhcVU=
X-Google-Smtp-Source: AK7set+v4mixbtGcWyNJJm6M1xTEopq+qsiFxxW+cXaAEG3mI89wuQjDViQ+Rg4SWbOKaxjNXq+xQA==
X-Received: by 2002:a5d:65c4:0:b0:2cf:f30f:cdb3 with SMTP id e4-20020a5d65c4000000b002cff30fcdb3mr8421800wrw.32.1679087306619;
        Fri, 17 Mar 2023 14:08:26 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b13-20020adff90d000000b002c54c92e125sm2801714wrr.46.2023.03.17.14.08.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 14:08:26 -0700 (PDT)
Message-ID: <2f364b3a-2b10-9b25-c0aa-194ac60a3971@gmail.com>
Date:   Fri, 17 Mar 2023 22:08:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] ip.7: Fix IP_MULTICAST_ALL description
To:     Christoph Lameter <cl@gentwo.de>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <ba9a8cc2-c7f0-f96e-74f8-c7dea334fb4@gentwo.de>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ba9a8cc2-c7f0-f96e-74f8-c7dea334fb4@gentwo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------12TD6xdHPE2s0w8j8ggREtzZ"
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
--------------12TD6xdHPE2s0w8j8ggREtzZ
Content-Type: multipart/mixed; boundary="------------VveTLslGl6jOR7KD000X1o7F";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Christoph Lameter <cl@gentwo.de>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com
Message-ID: <2f364b3a-2b10-9b25-c0aa-194ac60a3971@gmail.com>
Subject: Re: [PATCH] ip.7: Fix IP_MULTICAST_ALL description
References: <ba9a8cc2-c7f0-f96e-74f8-c7dea334fb4@gentwo.de>
In-Reply-To: <ba9a8cc2-c7f0-f96e-74f8-c7dea334fb4@gentwo.de>

--------------VveTLslGl6jOR7KD000X1o7F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Christoph,

On 3/16/23 00:43, Christoph Lameter wrote:
> INADDR_ANY has nothing to do with the IP_MULTICAST_ALL option.
> It does not matter if the interface is bound to all interfaces
> or a particular interface for the functionality of IP_MULTICAST_ALL.
>=20
> Multicast datagrams are addressed to a multicast IP address and will en=
ter
> the network stack via a particular interface. The application can choos=
e
> from which interface it will receive multicast data by binding the sock=
et
> to an IP address. It can then use the IP_MULTICAST_ALL option to
> restrict the multicast groups that the IP stack will deliver via the
> socket.
>=20
> Signed-off-by: Christoph Lameter <cl@linux.com>

Patch applied.

Thanks,

Alex

>=20
> Index: manpages-5.10/man7/ip.7
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- manpages-5.10.orig/man7/ip.7
> +++ manpages-5.10/man7/ip.7
> @@ -571,10 +571,7 @@ that wish to deliberately send probe pac
>  the observed Path MTU.
>  .TP
>  .BR IP_MULTICAST_ALL " (since Linux 2.6.31)"
> -This option can be used to modify the delivery policy of multicast mes=
sages
> -to sockets bound to the wildcard
> -.B INADDR_ANY
> -address.
> +This option can be used to modify the delivery policy of multicast mes=
sages.
>  The argument is a boolean integer (defaults to 1).
>  If set to 1,
>  the socket will receive messages from all the groups that have been jo=
ined

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------VveTLslGl6jOR7KD000X1o7F--

--------------12TD6xdHPE2s0w8j8ggREtzZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQU1sEACgkQnowa+77/
2zJkWhAAoPmPt4C2oJJgrY40lfmnyoTPzEjVhLXlsVjacytLQvup5JjWp6Ve3zM1
EaQxIQKTDv6bJJ5wIVhgq+oLsA4Ls8/GZG78SxX+yczOLzL3lmXNzs9vUBDDKyzE
3wdCqOiXgVGIdMZw7YadUvig+ngsSHwbDfKNKAAxdRg+N0hHpNCHVulhuk+1VZm5
SysnBWKxYOUjrbBSKXapbzDvIxLTgv1nlwQiND7YSH6QEAjX9v9lxhrhzz1aG6eU
DVLDgFhX6YmKLtQDw7GJ0+Dl+O5R/j/tLhi/qHZgq6TvqB+hxP/9F4tBqRUQWWvR
hg+ZS6aVCJ40B7909w6wAZgyUH0cZAk/IAnl7o7w2OF4xaQisAdOlDexTu1xiN2s
cBHJURk31bBtLnUrK+Tlj1TDLX2w+Pw+FZqQzcp61JM2xz7Z9xAln0axszw64uRB
lWMehxVauJJRWVCjzqVsrybaFV3xSAIUnoyo5Rhcw8nr4gBNx/Z5oadTBtpqB3wZ
cnH3bdggS9u6j2tOPc6byOb5vu1dxvmuRs0hREqEOTReWC2MOt7UOMtme2PgYL8h
1fugfPFNXodTEjPaGHSa6+MC5ycceJK5qMWCcpqW6OYBm2WGVN1dAPy+7yNY+rpb
mUgmxkJZh50dtfrbyC7WsBPIosSZzImo6AxEQIhYmxTxjGxD86E=
=VWMa
-----END PGP SIGNATURE-----

--------------12TD6xdHPE2s0w8j8ggREtzZ--
