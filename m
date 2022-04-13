Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31A0C4FF1D9
	for <lists+linux-man@lfdr.de>; Wed, 13 Apr 2022 10:27:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232245AbiDMIaO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Apr 2022 04:30:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229958AbiDMIaN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Apr 2022 04:30:13 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BF10344DF
        for <linux-man@vger.kernel.org>; Wed, 13 Apr 2022 01:27:53 -0700 (PDT)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out2.suse.de (Postfix) with ESMTP id 19E331F38D;
        Wed, 13 Apr 2022 08:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1649838472; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=BUw7zhTfWDynEhjpkgP693URauaUcqv9C4C8fPBgnlw=;
        b=OkeIIYjGHAsk/0qmFxCdB5beFkQHdnLOVFiUxOZ40GSrK9nPeXjvQNqtwgxmCCvvwzvK/m
        AJYRkreBH41DB1S3FQ/O08r5ts3Mk7tl5GKY2zplWda2obFU960hvqU6IY84AsoOAEBC3h
        oW5NpRRdWny36C5ge0RsuocLjhrMiSI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1649838472;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=BUw7zhTfWDynEhjpkgP693URauaUcqv9C4C8fPBgnlw=;
        b=fvKBv4vYqogbXr1IK50xVFGWnIEQJ1F8YyAxeUclS0Wqi5S5kFKJWzCDFK6rHKFymZrmpc
        E+e/0z0dH3sFpgCw==
Received: from quack3.suse.cz (unknown [10.100.224.230])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by relay2.suse.de (Postfix) with ESMTPS id 06BFBA3B82;
        Wed, 13 Apr 2022 08:27:52 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
        id B648BA0615; Wed, 13 Apr 2022 10:27:51 +0200 (CEST)
Date:   Wed, 13 Apr 2022 10:27:51 +0200
From:   Jan Kara <jack@suse.cz>
To:     Gabriel Krisman Bertazi <krisman@collabora.com>
Cc:     Matthew Bobrowski <repnop@google.com>,
        Amir Goldstein <amir73il@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v4] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Message-ID: <20220413082751.57lzlgwiursy7onk@quack3.lan>
References: <YlDCh1OEVxSgu2L9@google.com>
 <CAOQ4uxjpwZs8Jg-cZ5yWqUis=FA=+g+ycjdBchz0kzKBhs6HxQ@mail.gmail.com>
 <YlSzOaBTLA+LqOhU@google.com>
 <87bkx7xj3q.fsf@collabora.com>
 <YlTKQWTwWY45g9Ws@google.com>
 <87lewacf0r.fsf_-_@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lewacf0r.fsf_-_@collabora.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue 12-04-22 14:50:28, Gabriel Krisman Bertazi wrote:
> FAN_FS_ERROR is a new event for fanotify to report filesystem errors.
> This documents how to use the feature and specific caveats.
> 
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> 
> ---
> + Michael, linux-man
> 
> Matthew,
> 
> as discussed, this is rebased on top of the PIDFD documentation: commit
> 207080c7f7f5 ("fanotify: Document FAN_REPORT_PIDFD Feature").
> 
> Changes since v3:
>  (Matthew)
>  - Rewording and fixes from github)
>  (amir)
>  - 5.15 -> 5.16
> 
> Changes since v2:
>   (matthew)
>     - Grammar
>     - List filesystems that support the feature
>     - file system -> filesystem
> Changes since v1:
> (Matthew)
>   - Grammar fixes
>   - Don't use the term "submitted" for events sent to the listener
>   - Clarify the kind of information that is file system specific

Thanks for the manpage! Couple of notes below.

> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 9a45cbb77893..8f9bb863980b 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -203,6 +203,27 @@ Create an event when a marked file or directory itself is deleted.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> +.BR FAN_FS_ERROR " (since Linux 5.16)"
> +.\" commit 9709bd548f11a092d124698118013f66e1740f9b
> +Create an event when a filesystem error is detected.

Maybe we could specify here a bit more what "filesystem error" means?
Because we don't generate the event e.g. on ENOSPC which could be
considered filesystem error. We don't generate it on EIO in data block
either. So maybe something like: "Create an event when a filesystem error
leading to inconsistent filesystem metadata is detected." Because that's
closer to what we currently do as far as I remember.

> +An fanotify group that identifies filesystem objects by file handles
> +is required.
> +.IP
> +An additional information record of type
> +.BR FAN_EVENT_INFO_TYPE_ERROR
> +is returned for each event in the read buffer.
> +.IP
> +Events of such type are dependent on support
> +from the underlying filesystem.
> +At the time of this writing,
> +only the
> +.B ext4
> +filesystem supports this feature.
> +.IP
> +See
> +.BR fanotify (7)
> +for additional details.
> +.TP

BTW any plans to add support to XFS or btrfs? I guess it would be good to
spread the use a bit more so that it does not end up as a niche ext4
feature not very useful to programmers...

Otherwise the changes look good (modulo some language issues Matthew
already pointed out).

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
