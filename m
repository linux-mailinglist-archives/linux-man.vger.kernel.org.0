Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A598F5A0523
	for <lists+linux-man@lfdr.de>; Thu, 25 Aug 2022 02:20:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbiHYAUp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 20:20:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbiHYAUp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 20:20:45 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBD527FE6C
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 17:20:43 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 534E1351CA;
        Thu, 25 Aug 2022 00:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1661386842; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=XHGKkrDo2VnNnqwbHpAsfpFNgEAyWVE1tTpxGcepWPE=;
        b=mDJ7LkjnaeFfgTX5PZ+GY4S5TDVOhxfYUFYXu+80yo7iHwcIrxz4d3oa3fDE9ON/g9540B
        xFnpLrkAGDcBHSYV9uZGKjcvNE2Swm8dKAmrP4vhqJMlktPkDaTtNmtzEsofRXuGi1cRkU
        NhUQytgX7hjiTVc+yF4ict5y67RrFbk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1661386842;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=XHGKkrDo2VnNnqwbHpAsfpFNgEAyWVE1tTpxGcepWPE=;
        b=83ClWsI5xHUDi2tL5p1ifwCyNwpAEFIKV8fgtGSq/er1CsjCp5A9e/sOZ8q2RvC/SIVfUY
        pyZXxD0cpgZcKaBw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id E12F613A47;
        Thu, 25 Aug 2022 00:20:40 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id vWhnJ1jABmMuTwAAMHmgww
        (envelope-from <neilb@suse.de>); Thu, 25 Aug 2022 00:20:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
From:   "NeilBrown" <neilb@suse.de>
To:     "Alejandro Colomar" <alx.manpages@gmail.com>
Cc:     "Jeff Layton" <jlayton@kernel.org>,
        "Michael Kerrisk" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] utime.2, utimensat.2: explicitly mention ctime changing.
In-reply-to: <38bbc417-9d74-2407-b7c6-f9b2554cc837@gmail.com>
References: <166130409455.27490.3548169201261980550@noble.neil.brown.name>,
 <22fdfff7e210aef79ea9e65d779e87cb6bcd5295.camel@kernel.org>,
 <38bbc417-9d74-2407-b7c6-f9b2554cc837@gmail.com>
Date:   Thu, 25 Aug 2022 10:20:36 +1000
Message-id: <166138683612.27490.13474817287495072119@noble.neil.brown.name>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 24 Aug 2022, Alejandro Colomar wrote:
> Hi Neil and Jeff,
>=20
> On 8/24/22 12:15, Jeff Layton wrote:
> > On Wed, 2022-08-24 at 11:21 +1000, NeilBrown wrote:
> >> utime and related calls always change the ctime.  It is worth making
> >> this explicit.
> >> This is clear from the code (vfs_utimes() in fs/utimes.c always sets
> >> ATTR_CTIME) and is documented in
> >>    https://pubs.opengroup.org/onlinepubs/007904875/functions/utimes.html
> >>
> >> Signed-off-by: NeilBrown <neilb@suse.de>
> >> ---
> >>   man2/utime.2     | 2 ++
> >>   man2/utimensat.2 | 3 +++
> >>   2 files changed, 5 insertions(+)
> >>
> >> diff --git a/man2/utime.2 b/man2/utime.2
> >> index 5338723574e2..7557d680afa3 100644
> >> --- a/man2/utime.2
> >> +++ b/man2/utime.2
> >> @@ -39,6 +39,8 @@ to the
> >>   fields of
> >>   .I times
> >>   respectively.
> >> +The status change time (ctime) will be set to the current time, even if=
 the
> >> +other time stamps don't actually change.
> >>   .PP
> >>   If
> >>   .I times
> >> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> >> index 11cf3ee24129..2abf8e196ee1 100644
> >> --- a/man2/utimensat.2
> >> +++ b/man2/utimensat.2
> >> @@ -101,6 +101,9 @@ If
> >>   .I times
> >>   is NULL, then both timestamps are set to the current time.
> >>   .\"
> >> +.PP
> >> +The status change time (ctime) will be set to the current time, even if=
 the
> >> +other time stamps don't actually change.
> >>   .SS Permissions requirements
> >>   To set both file timestamps to the current time (i.e.,
> >>   .I times
> >=20
> > Reviewed-by: Jeff Layton <jlayton@kernel.org>
>=20
> Patch applied, with the tag.  Thank you both!

Thanks.

>=20
> Cheers,
> Alex
>=20
> P.S.: Please CC me in the patches, or I might not spot them.

I will in future, but you might like to update
https://www.kernel.org/doc/man-pages/patches.html to make it clear that
"either" isn't really wanted and "both" maintainers should get the patch.

NeilBrown


>=20
> --=20
> Alejandro Colomar
> <http://www.alejandro-colomar.es/>
>=20
