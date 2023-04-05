Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F7C56D71B7
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 02:51:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235839AbjDEAvu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 20:51:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235822AbjDEAvt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 20:51:49 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5279C10CF
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 17:51:48 -0700 (PDT)
References: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
 <fdbd4b16-6e99-ffb6-40c0-85a2b1509222@gotplt.org>
User-agent: mu4e 1.10.1; emacs 29.0.60
From:   Sam James <sam@gentoo.org>
To:     Siddhesh Poyarekar <siddhesh@gotplt.org>
Cc:     Mingye Wang <arthur200126@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        DJ Delorie <dj@redhat.com>
Subject: Re: [RFC PATCH] malloc_usable_size.3: Warn about _FORTIFY_SOURCE
 interaction
Date:   Wed, 05 Apr 2023 01:51:10 +0100
In-reply-to: <fdbd4b16-6e99-ffb6-40c0-85a2b1509222@gotplt.org>
Message-ID: <87lej7qhgu.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain


Siddhesh Poyarekar <siddhesh@gotplt.org> writes:

> On 2023-04-04 01:52, Mingye Wang wrote:
>> Hi all,
>> In (somewhat) recent discussions about _FORTIFY_SOURCE level 3, a
>> common snag to hit seems to be abuse of malloc_usable_size(). The
>> attached patch is my attempt at making the situation easier to sort
>> through.
>> See siddhesh's comment on GitHub.[0] I wonder if the language needs
>> to
>> be stronger.
>>    [0]: https://github.com/systemd/systemd/issues/22801#issuecomment-1343041481
>
> For more context of my statement, please see this discussion:
>
> https://sourceware.org/pipermail/libc-alpha/2022-November/143599.html
>
> which continued into the next month:
>
> https://sourceware.org/pipermail/libc-alpha/2022-December/143667.html
>
> This amendment that DJ wrote is probably the most precise description
> of the current malloc_usage_size situation:
>
>   The value returned by malloc_usable_size() may be greater than the
>   requested size of the allocation because of various internal
>   implementation details, none of which the programmer should rely on.
>   This function is intended to only be used for diagnostics and
>   statistics; writing to the excess memory without first calling
>   realloc() to resize the allocation is not supported.  The returned
>   value is only valid at the time of the call; any other call to a
>   malloc family API may invalidate it.

Honestly, I thought we'd committed that. Oops.


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZCzGEV8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZAwDAD+O/TGZi4l3m6m8kR3FYlGv4M0goUjYH9Xsdqa
B5uOgoAA/2I5RjMgC8gbUPgTs0m43wathXbPR3ucrhwv+E7jTZoJ
=Wb07
-----END PGP SIGNATURE-----
--=-=-=--
