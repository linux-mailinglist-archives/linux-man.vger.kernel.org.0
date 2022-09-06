Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 065B75AE695
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 13:28:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231731AbiIFL21 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 07:28:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231571AbiIFL20 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 07:28:26 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DBE5481C2
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 04:28:24 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 4138E1F9C7;
        Tue,  6 Sep 2022 11:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1662463703; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Z87FrIttZ8fQv85nsmNkGBcqpkmHI6NrZmbTHMI5KuQ=;
        b=KF8HggwpM5nUoIe6TkOkhoH0Dk++fsxfVnNAW53MKwNoBURhORCH2LUe3t2gws8rN3cLFQ
        chL13zoTIYcAdnDRjxTb3DZapJV+t0hWp+1xZZj9SaLWoB6Y3KBl+/Hq70znOAwYlFrTQC
        QhK/YiZB6M6Fvxfj+3Sj1Pxpi5wGrck=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1662463703;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Z87FrIttZ8fQv85nsmNkGBcqpkmHI6NrZmbTHMI5KuQ=;
        b=yoJTniOSHZWZII/qBwcwUSqzWRqyIcBIbz+ofS57MEbhndILIV0ZZyqDtsK1GgyBULTJrv
        yqU1sg9nhnvDQfBA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 3380713A19;
        Tue,  6 Sep 2022 11:28:23 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id t/WGDNcuF2PtJQAAMHmgww
        (envelope-from <jack@suse.cz>); Tue, 06 Sep 2022 11:28:23 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
        id C050CA067E; Tue,  6 Sep 2022 13:28:22 +0200 (CEST)
Date:   Tue, 6 Sep 2022 13:28:22 +0200
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [RFC][PATCH] fanotify_mark.2: Document FAN_MARK_IGNORE
Message-ID: <20220906112822.xn6rwhlnhy53wep3@quack3>
References: <20220904155113.2623371-1-amir73il@gmail.com>
 <20220906094838.7tjroxwb4hwy7qrp@quack3>
 <CAOQ4uxhYmMyjWEdzYvKxBqw=-88wB=LarWTFUE=u5mFrJD7CVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOQ4uxhYmMyjWEdzYvKxBqw=-88wB=LarWTFUE=u5mFrJD7CVw@mail.gmail.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_SOFTFAIL,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue 06-09-22 14:13:31, Amir Goldstein wrote:
> On Tue, Sep 6, 2022 at 12:48 PM Jan Kara <jack@suse.cz> wrote:
> >
> > On Sun 04-09-22 18:51:13, Amir Goldstein wrote:
> > > A new flavor of FAN_MARK_IGNORED_MASK that helps to resolve the
> > > ambiguity around the combination of event flags and ignore mask.
> > >
> > > It is also more strict in the events and flags allowed to be
> > > set in a non-directory inode mark mask and it mandates the use
> > > of FAN_MARK_IGNORED_SURV_MODIFY flag on filesystem, mount and
> > > directory inode marks.
> > >
> > > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> >
> > <snip>
> >
> > > +.BR FAN_MARK_IGNORE " (since Linux 6.0)"
> > > +.\" commit e252f2ed1c8c6c3884ab5dd34e003ed21f1fe6e0
> > > +This flag has a similar effect as setting the
> > > +.B FAN_MARK_IGNORED_MASK
> > > +flag.
> > > +The events in
> > > +.I mask
> > > +shall be added to or removed from the ignore mask.
> > > +Unlike the
> > > +.B FAN_MARK_IGNORED_MASK
> > > +flag,
> > > +this flag also has the effect that the
> > > +.B FAN_ONDIR ,
> > > +and
> > > +.B FAN_EVENT_ON_CHILD
> > > +flags take effect on the ignore mask.
> > > +Specifically, unless
> > > +.B FAN_ONDIR
> > > +flag is set with
> > > +.BR FAN_MARK_IGNORE ,
> > > +events on directories will not be ignored
> > > +and if the flag
> > > +.B FAN_EVENT_ON_CHILD
> > > +is set,
> > > +events on children will be ignored.
> > > +For example,
> > > +a mark on a directory with combination of
> > > +a mask with
> > > +.B FAN_CREATE
> > > +event
> > > +and
> > > +.B FAN_ONDIR
> > > +flag
> > > +and an ignore mask with
> > > +.B FAN_CREATE
> > > +event
> > > +and without
> > > +.B FAN_ONDIR
> > > +flag,
> > > +will result in getting only events for creation of sub-directories.
> > > +When using this flag to add to an ignore mask
> > > +of a mount, filesystem, or directory inode mark,
> > > +the
> > > +.B FAN_MARK_IGNORED_SURV_MODIFY
> > > +flag must be specified.
> >
> > Perhaps a short rationaly why this flag is required would be good here?
> 
> Here is a bit much IMO.
> I will add it to the next section.
> How's that?
> 
>  .B FAN_MARK_IGNORED_SURV_MODIFY
>  The ignore mask shall survive modify events.
>  If this flag is not set,
>  the ignore mask is cleared when a modify event occurs
> -for the ignored file or directory.
> +on the marked object.
> +Omitting this flag is typically used to suppress events
> +(e.g.,
> +.BR FAN_OPEN )
> +for a specific file,
> +until that specific file's content has been modified.
> +It is far less useful to suppress events
> +on an entire filesystem,
> +or mount,
> +or on all files inside a directory,
> +until some file's content has been modified.
> +For this reason,
> +the
> +.B FAN_MARK_IGNORE
> +flag requires the
> +.B FAN_MARK_IGNORED_SURV_MODIFY
> +flag on a mount,
> +filesystem,
> +or directory inode mark.
> +This flag cannot be removed from a mark once set.
> +When the ignore mask is updated without this flag,
> +on a mark that was previously updated with the
> +.B FAN_MARK_IGNORE
> +and
> +.B FAN_MARK_IGNORED_SURV_MODIFY
> +flags,
> +the update fails with
> +.B EEXIST
> +error.
> +.TP
> +.B FAN_MARK_IGNORE_SURV
> +This is a synonym for
> +.RB ( FAN_MARK_IGNORE | FAN_MARK_IGNORED_SURV_MODIFY ).
>  .TP

Yes, looks good.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
