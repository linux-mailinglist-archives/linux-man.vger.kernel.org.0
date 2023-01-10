Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 813DF664DD1
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 22:02:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231965AbjAJVCc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 16:02:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232144AbjAJVCa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 16:02:30 -0500
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABE185D6A3
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 13:02:28 -0800 (PST)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-4a2f8ad29d5so170106117b3.8
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 13:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JS2ODElTAXgo0IBomax95ezpp8saie1LFOzCA94Ji74=;
        b=NNC81wjwvLYxj0EfdZ9cioA96tQnvY8fGV+BATdvuyXY1nkfZCYBQxgdwDOx47NAq2
         VC/GluBZ5mR2xYEeKyMGXhsTbziqAVeeGUKVFqMxmT/jnUaicHdJkqntTlaqJp3QSp4g
         iXme7btLSR8XKNrEmUfaRl8GfUkSNKIWNChtzOkAtwFbqZ9S6Cose/uxDPS3Rl/Y3QfJ
         KXuSazbufOvNTP8vImQ1ZABT0IxXmiwtNsEFIM/BMB4VZgwO4y2gZlniV136ljo6sDQ4
         plwT25dibt9UBL5lg32te2MUMICp6g9ViObPVUt4O9vJ7xLW6RGb7VCV24vjDmFa8rFw
         TovQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JS2ODElTAXgo0IBomax95ezpp8saie1LFOzCA94Ji74=;
        b=Veb/FTy7iN5WtOQCDG0KDdRnwG290jB/S8i2HWpXFQcAQWEpRSHxZp1Ty3piWcmWrr
         GLOwhI9haosEPw2Gkkz8lKLEBFu3Qzx313ew3l11p1AFH7txdfK/Ldj4k7bXzwIVsF/E
         pJW7IPtCInI6vzH6wXRT5DojCK2Tawd569ES86TFia//Gple2eFU1Riy9XeniqgrSWbK
         ntxtsxXIBA230FVr7Div/2td9/IXg1s5bAtVUY8jQF3f6USmKPkbolqzD1Ud9Jhe3cX8
         BnGxb8ZGTXg76Bm7TEpgUFux782S+icvAsh/OtrZcvta0xq8DTru+4WIupFmsPVtS+N+
         1UWQ==
X-Gm-Message-State: AFqh2krPS61fWoFv4SwAKYg7CnhU9s4X6AzG3kYqzLWKUW32qeePanjE
        IPZL7rO+PgIxNpMIsd3NAy+AVcvQnx0z8/7E5dwMHQ==
X-Google-Smtp-Source: AMrXdXtUjEdjGHpWEYDmyJvv53ap8hZ3cbL8alWeVzfPFSA9g32JWehdmflV3los9MpwqZI5umyfVYDqhNlpXqDr5Tc=
X-Received: by 2002:a05:690c:584:b0:4a7:10f5:47f8 with SMTP id
 bo4-20020a05690c058400b004a710f547f8mr5070266ywb.218.1673384547719; Tue, 10
 Jan 2023 13:02:27 -0800 (PST)
MIME-Version: 1.0
References: <C2C3B629-987E-46D9-AF48-8A38439C8243@nickgregory.me>
In-Reply-To: <C2C3B629-987E-46D9-AF48-8A38439C8243@nickgregory.me>
From:   Suren Baghdasaryan <surenb@google.com>
Date:   Tue, 10 Jan 2023 13:02:16 -0800
Message-ID: <CAJuCfpEywZx9O04EXLG=VjB+dp=OZo7Ou5-pAObTVo_z1Ff4cA@mail.gmail.com>
Subject: Re: [PATCH v2] prctl.2, proc.5: Document VMA naming
To:     Nick Gregory <nick@nickgregory.me>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
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

On Sat, Jan 7, 2023 at 2:19 PM Nick Gregory <nick@nickgregory.me> wrote:
>
> Bring in man page changes from the patch set by Colin Cross
> <ccross@google.com> [0], and document the corresponding virtual names in
> procfs.

Hi Nick,
The content LGTM (not an expert in formatting). You even captured the
recent addition of named shared anonymous mapping support (CC'ing
Pasha)! Thanks for doing this!

>
> Signed-off-by: Nick Gregory <nick@nickgregory.me>
> Cc: Colin Cross <ccross@google.com>
> Cc: Suren Baghdasaryan <surenb@google.com>
> Cc: Kees Cook <keescook@chromium.org>

Reviewed-by: Suren Baghdasaryan <surenb@google.com>

>
> [0] https://lore.kernel.org/linux-mm/20211019215511.3771969-2-surenb@google.com/
> ---
>  man2/prctl.2 | 34 ++++++++++++++++++++++++++++++++++
>  man5/proc.5  | 14 ++++++++++++++
>  2 files changed, 48 insertions(+)
>
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 74f86ff49..2c8d52ade 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -769,6 +769,40 @@ This feature is available only if the kernel is built with the
>  .B CONFIG_CHECKPOINT_RESTORE
>  option enabled.
>  .RE
> +.\" prctl PR_SET_VMA
> +.TP
> +.BR PR_SET_VMA " (since Linux 5.17)"
> +.\" Commit 9a10064f5625d5572c3626c1516e0bebc6c9fe9b
> +Sets an attribute specified in
> +.I arg2
> +for virtual memory areas starting from the address specified in
> +.I arg3
> +and spanning the size specified in
> +.IR arg4 .
> +.I arg5
> +specifies the value of the attribute to be set.
> +.IP
> +Note that assigning an attribute to a virtual memory area
> +might prevent it from being merged with adjacent virtual memory areas
> +due to the difference in that attribute's value.
> +.IP
> +Currently,
> +.I arg2
> +must be one of:
> +.RS
> +.TP
> +.B PR_SET_VMA_ANON_NAME
> +Set a name for anonymous virtual memory areas.
> +.I arg5
> +should be a pointer to a null-terminated string containing the name.
> +The name length including null byte cannot exceed 80 bytes.
> +If
> +.I arg5
> +is NULL, the name of the appropriate anonymous virtual memory areas
> +will be reset.
> +The name can contain only printable ascii characters (including space),
> +except \(aq[\(aq, \(aq]\(aq, \(aq\e\(aq, \(aq$\(aq, and \(aq\(ga\(aq.
> +.RE
>  .\" prctl PR_MPX_ENABLE_MANAGEMENT
>  .TP
>  .BR PR_MPX_ENABLE_MANAGEMENT ", " PR_MPX_DISABLE_MANAGEMENT " (since Linux 3.19, removed in Linux 5.4; only on x86)"
> diff --git a/man5/proc.5 b/man5/proc.5
> index 65a4c38e3..e0a64d486 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -1372,6 +1372,20 @@ See
>  .TP
>  .I [heap]
>  The process's heap.
> +.TP
> +.IR [anon: name ] " (since Linux 5.17)"
> +.\" Commit 9a10064f5625d5572c3626c1516e0bebc6c9fe9b
> +A named private anonymous mapping.
> +Set with
> +.BR prctl (2)
> +.BR PR_SET_VMA_ANON_NAME .
> +.TP
> +.IR [anon_shmem: name ] " (since Linux 6.2)"
> +.\" Commit d09e8ca6cb93bb4b97517a18fbbf7eccb0e9ff43
> +A named shared anonymous mapping.
> +Set with
> +.BR prctl (2)
> +.BR PR_SET_VMA_ANON_NAME .
>  .in
>  .RE
>  .IP
> --
> 2.39.0
>
