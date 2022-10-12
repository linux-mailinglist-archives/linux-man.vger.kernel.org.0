Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD605FC98B
	for <lists+linux-man@lfdr.de>; Wed, 12 Oct 2022 18:54:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbiJLQyI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Oct 2022 12:54:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiJLQyH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Oct 2022 12:54:07 -0400
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D741E31A7
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 09:54:05 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id 926FE240026
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 18:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.mx; s=2017;
        t=1665593643; bh=J0gVJfBENHJmZd0gO6O+HNr0uw3B8qCDQ+r0POFmMAU=;
        h=Date:Cc:To:Subject:From:From;
        b=IfI6NCVg5LCOPlGgpC0e7sZIrFqX/eAafcB1sfLo9H9W6SskCJaT728e1PL5YvPVr
         HcHVtYIxBRGiOzkJQ5zJYM6BHg0kB+93pfygXGoEbpwN7gzLqEIwtFqiKaiRqjBRoD
         PhCmjV6hTYIv0iepaTH6PkneFJ3flde5PHmxUrnYYPcMPZS337Y8w2lipRGiUdBoWb
         f9H1zDELfjJ114NoCCSuP4CYsJ2s99pVV0jiiB4UAbCTD1cAx6sJunvJI0kKpCtoUk
         xttm/jJJ4fJF6Sw3DCbMfuGlnwi11edS2zSaORJiSVYa1m2f1idyAYvNFRSWPOrfZi
         FIVC6Hysx+P+g==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4Mndyx0b5Gz6tpV;
        Wed, 12 Oct 2022 18:54:00 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Wed, 12 Oct 2022 16:53:58 +0000
Message-Id: <CNK3O2GGUKYY.32ZNUNK3TNUGM@grinningface>
Cc:     "linux-man" <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar" <alx.manpages@gmail.com>,
        "groff" <groff@gnu.org>
Subject: Re: 3-word compound adjectives; the return of the '-'
From:   "DJ Chase" <u9000@posteo.mx>
References: <82b77010-6b42-a58a-f8c7-b977297d6832@gmail.com>
In-Reply-To: <82b77010-6b42-a58a-f8c7-b977297d6832@gmail.com>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed Oct 12, 2022 at 10:47 AM EDT, Alejandro Colomar wrote:
> And now I found one more=20
> <https://www.editorgroup.com/blog/to-hyphenate-or-not-to-hyphenate/>:
>
>   d) block device\[en]based filesystems
>
> Where the en dash is used to distinguish it from 'a block filesystem=20
> based on a device'.

I=E2=80=99ve seen (and personally use) en-dashes like this, but only when t=
here
is also a hyphen. In this usage, the en-dash is basically just a longer
hyphen. Example:
	block-device=E2=80=93based (block-device\[en]based)

Cheers,
--=20
DJ Chase
They, Them, Theirs
{gemini,https,ipns}://dj-chase.com
