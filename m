Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D80A68B582
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 07:11:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbjBFGLW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 01:11:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjBFGLV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 01:11:21 -0500
X-Greylist: delayed 515 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 05 Feb 2023 22:11:20 PST
Received: from xry111.site (xry111.site [IPv6:2001:470:683e::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C29361A9
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 22:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
        s=default; t=1675663362;
        bh=Eaz4SyTMOuF7zBQ93pGbODUECRcRp3ssm1Q8GAFDRo8=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=cUBkxX6BRFLf7rPVdOZmlreKMvyBNiD/ieKUI2Nz8dSIOpw6YFQzkUWer52rrTm4f
         3tuO/s0Hz4X3/rrhyRQUzokOytPDTCZ8kSR2EXbCW7uk+JDlZhAKVm0agB/lImcs9e
         tDXacJ8tdgw6KcP9k0byF7kLyyPbtCCIkcrNGwDM=
Received: from [IPv6:240e:358:113b:f00:dc73:854d:832e:2] (unknown [IPv6:240e:358:113b:f00:dc73:854d:832e:2])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@xry111.site)
        by xry111.site (Postfix) with ESMTPSA id 6121565B12;
        Mon,  6 Feb 2023 01:02:30 -0500 (EST)
Message-ID: <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be
 fixed using a union
From:   Xi Ruoyao <xry111@xry111.site>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, GCC <gcc@gcc.gnu.org>,
        glibc <libc-alpha@sourceware.org>,
        Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>,
        Eric Blake <eblake@redhat.com>
Date:   Mon, 06 Feb 2023 14:02:23 +0800
In-Reply-To: <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
References: <20230205152835.17413-1-alx@kernel.org>
         <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 2023-02-05 at 16:31 +0100, Alejandro Colomar via Libc-alpha wrote:

> The only correct way to use=C2=A0 different=C2=A0 types=C2=A0 in=C2=A0 an=
=C2=A0 API=C2=A0 is
> through=C2=A0 a=C2=A0 union.

I don't think this statement is true (in general).  Technically we can
write something like this:

struct sockaddr { ... };
struct sockaddr_in { ... };
struct sockaddr_in6 { ... };

int bind(int fd, const struct sockaddr *addr, socklen_t addrlen)
{
    if (addrlen < sizeof(struct sockaddr) {
        errno =3D EINVAL;
        return -1;
    }

    /* cannot use "addr->sa_family" directly: it will be an UB */
    sa_family_t sa_family;
    memcpy(&sa_family, addr, sizeof(sa_family));

    switch (sa_family) {
        case AF_INET:
            return _do_bind_in(fd, (struct sockaddr_in *)addr, addrlen);
        case AF_INET6:
            return _do_bind_in6(fd, (struct sockaddr_in6 *)addr, addrlen);
        /* more cases follow here */
        default:
            errno =3D EINVAL;
            return -1;
        }
    }
}

In this way we can use sockaddr_{in,in6,...} for bind() safely, as long
as we can distinguish the "real" type of addr using the leading byte
sequence (and the caller uses it carefully).

But obviously sockaddr_storage can't be distinguished here, so casting a
struct sockaddr_stroage * to struct sockaddr * and passing it to bind()
will still be wrong (unless we make sockaddr_storage an union or add
[[gnu::may_alias]]).

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University
