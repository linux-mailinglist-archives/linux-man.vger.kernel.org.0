Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14BA159F73D
	for <lists+linux-man@lfdr.de>; Wed, 24 Aug 2022 12:15:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233103AbiHXKPv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 06:15:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231846AbiHXKPu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 06:15:50 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8527F696E3
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 03:15:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 459CEB822BB
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 10:15:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D05AC433D7;
        Wed, 24 Aug 2022 10:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661336146;
        bh=aSOKEkKE9CCHhW5/+VGiwIyMSoSpnTStMse8ejUQiKc=;
        h=Subject:From:To:Date:In-Reply-To:References:From;
        b=cRcuUU2HF9PPol8GTxhaYTLqlWWajdpgqyI/jaoF9OfZg/+na43JTtpRGjKpf4rd0
         tGOSJvl6cMYmnJysst7LOvmo5UG2gmje7SSEf60lOdoBCPI6OnwI7DFuHmeltBWvf6
         CkCFFQVzaxSKFDlNhh0ixQjUMmY1EbZGeIK+uUP4WN8SONz87VY54Oa2AEqzNp+CWY
         +u4v6a6RqgkjRoXc3997ZNfNZHc+kRCM/uLahOSWAKhzmfqWNhY2YrSlCwgK6F2XQ0
         qmT56oB4vl1zwms8TbSnE80D858xDgmO/Q6yx1kHwMJqVYzIumMlAJ6lDbhv+dE+KZ
         AIF2c6FAGbQQw==
Message-ID: <22fdfff7e210aef79ea9e65d779e87cb6bcd5295.camel@kernel.org>
Subject: Re: [PATCH] utime.2, utimensat.2: explicitly mention ctime changing.
From:   Jeff Layton <jlayton@kernel.org>
To:     NeilBrown <neilb@suse.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Date:   Wed, 24 Aug 2022 06:15:45 -0400
In-Reply-To: <166130409455.27490.3548169201261980550@noble.neil.brown.name>
References: <166130409455.27490.3548169201261980550@noble.neil.brown.name>
Content-Type: text/plain; charset="ISO-8859-15"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 (3.44.4-1.fc36) 
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 2022-08-24 at 11:21 +1000, NeilBrown wrote:
> utime and related calls always change the ctime.  It is worth making
> this explicit.
> This is clear from the code (vfs_utimes() in fs/utimes.c always sets
> ATTR_CTIME) and is documented in
>   https://pubs.opengroup.org/onlinepubs/007904875/functions/utimes.html
>=20
> Signed-off-by: NeilBrown <neilb@suse.de>
> ---
>  man2/utime.2     | 2 ++
>  man2/utimensat.2 | 3 +++
>  2 files changed, 5 insertions(+)
>=20
> diff --git a/man2/utime.2 b/man2/utime.2
> index 5338723574e2..7557d680afa3 100644
> --- a/man2/utime.2
> +++ b/man2/utime.2
> @@ -39,6 +39,8 @@ to the
>  fields of
>  .I times
>  respectively.
> +The status change time (ctime) will be set to the current time, even if =
the
> +other time stamps don't actually change.
>  .PP
>  If
>  .I times
> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> index 11cf3ee24129..2abf8e196ee1 100644
> --- a/man2/utimensat.2
> +++ b/man2/utimensat.2
> @@ -101,6 +101,9 @@ If
>  .I times
>  is NULL, then both timestamps are set to the current time.
>  .\"
> +.PP
> +The status change time (ctime) will be set to the current time, even if =
the
> +other time stamps don't actually change.
>  .SS Permissions requirements
>  To set both file timestamps to the current time (i.e.,
>  .I times

Reviewed-by: Jeff Layton <jlayton@kernel.org>
