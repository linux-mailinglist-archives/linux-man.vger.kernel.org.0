Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0532A6D8970
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 23:20:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229379AbjDEVUN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 17:20:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232642AbjDEVUN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 17:20:13 -0400
X-Greylist: delayed 24996 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 05 Apr 2023 14:20:12 PDT
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050:0:465::102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3070B6585
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 14:20:12 -0700 (PDT)
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4PsHbD3qxwz9sW7;
        Wed,  5 Apr 2023 23:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
        t=1680729608;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=KxWpUe7cFDctIdkKmwgo80OfhLQRu1fsaxSd1T1/CGI=;
        b=G+M0jco1AQvp9m3kiKlN6qt9xVXtDxWC2XURKXudxT4HQ3yr42uKOVETicbJaiu/sqeTXX
        t8FA0Np4mPH3Mo4++57Srw4x00Kj1y7pP4VLSC5y4ttWrmLAhinah9Aki7/WxoSAWcfOcj
        R1gALKJy0LUYg6J/caNPXsNAs7zkmMtA1Jd302zQ1bUiFIXZAVdH6IRkw3+6s3dd0AHaJh
        eZoEdYJfVYVZyl2buryrkPbMSkaQE/VrZvzgvhGOswf6sYX4xDQlK0nUr6XnFE3KgMqiKN
        LTL07bJt12sox03ebnJc+Irjk9992E5ir76RnraNDE3cS8SFl3EP5dkXqt/wmg==
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <ghedoy8x5y.fsf@gouders.net> <87y1n6o1b3.fsf@aarsen.me>
 <ghpm8iyzqj.fsf@gouders.net> <83zg7mqha4.fsf@gnu.org>
From:   Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
To:     Eli Zaretskii <eliz@gnu.org>,
        Gavin Smith <GavinSmith0123@gmail.com>
Cc:     Dirk Gouders <dirk@gouders.net>, alx.manpages@gmail.com,
        linux-man@vger.kernel.org, help-texinfo@gnu.org
Subject: A less presumptive .info? (was: Re: Playground pager lsp(1))
Date:   Wed, 05 Apr 2023 22:38:12 +0200
In-reply-to: <83zg7mqha4.fsf@gnu.org>
Message-ID: <865yaa81ru.fsf@aarsen.me>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Rspamd-Queue-Id: 4PsHbD3qxwz9sW7
X-Spam-Status: No, score=-0.9 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Eli Zaretskii <eliz@gnu.org> writes:

> Info files are formatted already, you cannot ask the reader to
> reformat them for a different line length.
>
> With man pages this is only possible if you never keep the formatted
> pages and reuse them once they were produced.

I've been casually wondering if creating a new format that can host more
formatting options and uses more precise syntax than 'plaintext with
some binary tags' would be a decent thing to work on.

My thoughts were brief and undeveloped as this was thought of on the
commute, but something that retains the binary offsets for indices and
tags, but stores formatted data (perhaps as s-exprs, those would be easy
to parse).  It is always easier to remove information than to
reintroduce it.

Such a structure should resemble the input language, but with far less
complexity (e.g. something at the level of abstraction that HTML5 sits
at, so, macros would be expanded, and we'd be dealing with lists of
paragraphs and formatted blocks, etc.).

This would allow for the reflowing that was talked about in this thread,
and provide more readable output in graphical contexts, as it wouldn't
be data generated with the assumption of a monospace font (rather, the
format could store whether your context wants monospace or proportional
fonts at a given point), or data generated for a given screen size, or
with a given indentation size, or with the assumption of a lack of
features like italics, etc.

For instance, info2html used by the KDE info viewer currently produces
quite terrible results, because it fails to implement the heuristics the
Info viewers have properly.  This problem would be hard to have with a
better "at-rest" format for Info pages.

The alternative is, of course, bringing HTML up to par feature-wise
(wrt. indices etc), but that'd be on the other end of the extreme, where
instead of being too easy to parse and lacking important information,
it'd be oververbose with and difficult to parse (not that such a thing
should not be done too, so that folks using ordinary browsers can enjoy
documentation, and so that projects can provide more accessible
documentation by the merit of more people having HTML than Info
viewers).

WDYT folks?
=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOYEARYKAI4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCZC3mBV8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0RkVF
MkIzRDExM0ZDMDBBMzE2MkQ2MDYxNTJDMjk0MzAxRUEyQzQ5MxAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTzFMA/jI9krEYlWgZFxbw6KwuYUvKBrGpCDcdny1E
vwn46GiYAP4xE6pIyK0ovr2eEGVrq1064tXZy5fKBrSJI4TgS1oPAA==
=CsPW
-----END PGP SIGNATURE-----
--=-=-=--
