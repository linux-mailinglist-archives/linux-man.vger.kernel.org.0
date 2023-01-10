Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63849664F37
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 23:58:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231654AbjAJW5b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 17:57:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235583AbjAJW4s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 17:56:48 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20C28167D3
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 14:56:37 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id c82so6076003ybf.6
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 14:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q4PP6kPOXz4vqs8tUChvv3nDSiw0i9ROUfFSsmNKy7E=;
        b=iu0c7ojfiLNXYwWh/yTMbxN7ekKIQSzMAINZpwk5ECNSrfUmR7/SSIq72hDNpkGx0L
         0x289EZ1zJrg7EJfjrqP1FWkSjF551RymSSXN2fJJP0Iqx1CvvvY1r6wBXqrgn9xqKn6
         YLR0MJFC5U2vqBvBHeP8wWZPMOLbZnAZu7KLG1GcUJTzlTbDZYNA/zTAjqosFarKWcOj
         6/vHiXvURwkce9QNoGtC9RBpLfol/nMW6iDe82xvDTLunwsaqpIVG3WD7ugGmW2qdy3b
         fZ/jDPzpvt6UUEB2UTT+Fsg7pj6qvk0AGvB9/3laVd9ZrMBBSKGzpMcVCVcxevmz1LOX
         lL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q4PP6kPOXz4vqs8tUChvv3nDSiw0i9ROUfFSsmNKy7E=;
        b=yQgH/ZVEtGg0oz75g5JgKk0h16Fy4FSTei+NozVhtwAsfQrn8DjYRXHhyPt2SCdoTC
         4hoW1cnHxPMJQNQAd5/2tgIZ+usrwb0yoOq2XIyaU9eAfP7GvkmpHJNGLqNZ/9zuRD0w
         0fCpP4nZgDpXq0j71KmPMcgsX/rR5BMCy2cP7QZVuHSZsn/IJncacBWyGy0b9mayYreJ
         8wH6tiO9lMXaW6x45OwAlsx8Deg0AC072+AauOYb8eiUhZGZi7wGx/tir3z1IaZx9Z0y
         WmQGNnz7J5GvsEbpQIeoO9SyMpvpnTMTpwv5YVFbqrXHwgaNDgtGce4eH9uzIhkrwvu2
         fx8A==
X-Gm-Message-State: AFqh2kpA+krIfYb7cPv3XTCny3OwnvKBjRNSp3u/X1OmsEN/k9r0IoV3
        vVImT4phZFh7rrt684nt6Esg4St9GDMsRBMymwfyog==
X-Google-Smtp-Source: AMrXdXtmnlbJ1RH4fmwVl69SNxA31+hhTGn39TT0LFBK8UuY9uO7UnRQNRQN7PNerVYVsTQAuVN8cu97VPEKqlVO7II=
X-Received: by 2002:a25:abb1:0:b0:701:c58:f01e with SMTP id
 v46-20020a25abb1000000b007010c58f01emr6287628ybi.59.1673391396138; Tue, 10
 Jan 2023 14:56:36 -0800 (PST)
MIME-Version: 1.0
References: <C2C3B629-987E-46D9-AF48-8A38439C8243@nickgregory.me>
 <CAJuCfpEywZx9O04EXLG=VjB+dp=OZo7Ou5-pAObTVo_z1Ff4cA@mail.gmail.com> <d562b23b-f73d-ebe1-31b2-f23de4c3b491@gmail.com>
In-Reply-To: <d562b23b-f73d-ebe1-31b2-f23de4c3b491@gmail.com>
From:   Suren Baghdasaryan <surenb@google.com>
Date:   Tue, 10 Jan 2023 14:56:25 -0800
Message-ID: <CAJuCfpFWLmGjx7cgnBN8E0OVpVgL0yeWJmsre0uraY381pLE1A@mail.gmail.com>
Subject: Re: [PATCH v2] prctl.2, proc.5: Document VMA naming
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Nick Gregory <nick@nickgregory.me>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "ccross@google.com" <ccross@google.com>,
        "keescook@chromium.org" <keescook@chromium.org>,
        Pasha Tatashin <tatashin@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Jan 10, 2023 at 1:12 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Nick and Suren!
>
> On 1/10/23 22:02, Suren Baghdasaryan wrote:
> > On Sat, Jan 7, 2023 at 2:19 PM Nick Gregory <nick@nickgregory.me> wrote:
> >>
> >> Bring in man page changes from the patch set by Colin Cross
> >> <ccross@google.com> [0], and document the corresponding virtual names in
> >> procfs.
> >
> > Hi Nick,
> > The content LGTM (not an expert in formatting).
>
> The formatting is perfect, AFAICS. :)
>
> > You even captured the
> > recent addition of named shared anonymous mapping support (CC'ing
> > Pasha)! Thanks for doing this!
>
> Do you want me to wait for him to have a look, or should I just apply?

I CC'ed Pasha as FYI. I don't think he will have any objections.
Thanks for checking!

>
> >
> >>
> >> Signed-off-by: Nick Gregory <nick@nickgregory.me>
> >> Cc: Colin Cross <ccross@google.com>
> >> Cc: Suren Baghdasaryan <surenb@google.com>
> >> Cc: Kees Cook <keescook@chromium.org>
> >
> > Reviewed-by: Suren Baghdasaryan <surenb@google.com>
>
> Thanks for the patch and the review!
>
> Cheers,
>
> Alex
>
> >
> >>
> >> [0] https://lore.kernel.org/linux-mm/20211019215511.3771969-2-surenb@google.com/
> >> ---
> >>   man2/prctl.2 | 34 ++++++++++++++++++++++++++++++++++
> >>   man5/proc.5  | 14 ++++++++++++++
> >>   2 files changed, 48 insertions(+)
> >>
> >> diff --git a/man2/prctl.2 b/man2/prctl.2
> >> index 74f86ff49..2c8d52ade 100644
> >> --- a/man2/prctl.2
> >> +++ b/man2/prctl.2
> >> @@ -769,6 +769,40 @@ This feature is available only if the kernel is built with the
> >>   .B CONFIG_CHECKPOINT_RESTORE
> >>   option enabled.
> >>   .RE
> >> +.\" prctl PR_SET_VMA
> >> +.TP
> >> +.BR PR_SET_VMA " (since Linux 5.17)"
> >> +.\" Commit 9a10064f5625d5572c3626c1516e0bebc6c9fe9b
> >> +Sets an attribute specified in
> >> +.I arg2
> >> +for virtual memory areas starting from the address specified in
> >> +.I arg3
> >> +and spanning the size specified in
> >> +.IR arg4 .
> >> +.I arg5
> >> +specifies the value of the attribute to be set.
> >> +.IP
> >> +Note that assigning an attribute to a virtual memory area
> >> +might prevent it from being merged with adjacent virtual memory areas
> >> +due to the difference in that attribute's value.
> >> +.IP
> >> +Currently,
> >> +.I arg2
> >> +must be one of:
> >> +.RS
> >> +.TP
> >> +.B PR_SET_VMA_ANON_NAME
> >> +Set a name for anonymous virtual memory areas.
> >> +.I arg5
> >> +should be a pointer to a null-terminated string containing the name.
> >> +The name length including null byte cannot exceed 80 bytes.
> >> +If
> >> +.I arg5
> >> +is NULL, the name of the appropriate anonymous virtual memory areas
> >> +will be reset.
> >> +The name can contain only printable ascii characters (including space),
> >> +except \(aq[\(aq, \(aq]\(aq, \(aq\e\(aq, \(aq$\(aq, and \(aq\(ga\(aq.
> >> +.RE
> >>   .\" prctl PR_MPX_ENABLE_MANAGEMENT
> >>   .TP
> >>   .BR PR_MPX_ENABLE_MANAGEMENT ", " PR_MPX_DISABLE_MANAGEMENT " (since Linux 3.19, removed in Linux 5.4; only on x86)"
> >> diff --git a/man5/proc.5 b/man5/proc.5
> >> index 65a4c38e3..e0a64d486 100644
> >> --- a/man5/proc.5
> >> +++ b/man5/proc.5
> >> @@ -1372,6 +1372,20 @@ See
> >>   .TP
> >>   .I [heap]
> >>   The process's heap.
> >> +.TP
> >> +.IR [anon: name ] " (since Linux 5.17)"
> >> +.\" Commit 9a10064f5625d5572c3626c1516e0bebc6c9fe9b
> >> +A named private anonymous mapping.
> >> +Set with
> >> +.BR prctl (2)
> >> +.BR PR_SET_VMA_ANON_NAME .
> >> +.TP
> >> +.IR [anon_shmem: name ] " (since Linux 6.2)"
> >> +.\" Commit d09e8ca6cb93bb4b97517a18fbbf7eccb0e9ff43
> >> +A named shared anonymous mapping.
> >> +Set with
> >> +.BR prctl (2)
> >> +.BR PR_SET_VMA_ANON_NAME .
> >>   .in
> >>   .RE
> >>   .IP
> >> --
> >> 2.39.0
> >>
>
> --
> <http://www.alejandro-colomar.es/>
