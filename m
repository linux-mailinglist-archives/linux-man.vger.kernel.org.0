Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95CE97C5150
	for <lists+linux-man@lfdr.de>; Wed, 11 Oct 2023 13:15:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231608AbjJKLPY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Oct 2023 07:15:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231475AbjJKLPX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Oct 2023 07:15:23 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB749AF
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 04:15:21 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1c735473d1aso46994285ad.1
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 04:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697022921; x=1697627721; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uq1U4geA87GyozoNp9OYCyw+qByStO06qQE4yf/LL6g=;
        b=mWE8aLlsoSyLjQp5GvOR4cErvw4cxw5/24zTi4czpLjq2W4TuDiVjgPAtZojrfPTY+
         OzOwexnlooynr/luFTv64oH7beQ6MaqwWErExKajnuombBrzqtqJrhSQjXbEIRu+o7wt
         tEACyPLNEh0dxdf0LZ9t1at6d99vzP9SDfVNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697022921; x=1697627721;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uq1U4geA87GyozoNp9OYCyw+qByStO06qQE4yf/LL6g=;
        b=H4yOXjB3ojQWoNtjD7Vj86RkdCtVK6/MjjlgKZuN3JGqDJ+jCE35PjR9xP6P+pfPDV
         mvW6Y0zHPX2yBGpGawS0ar3z1VBSuMxI53WIxlVRs08ScLGTjhyDN8okqGWcvhY3mYXl
         6ggPZzdJ/ymucfNTXlEOHJ/KPVy+bN8IYmwEacB6AA0SVFhx+FX5tvsnfCkcccjsGQ7y
         RlWOpjsk4bDQoFQyLkw98sF6hTdotiAb5FOLR3ZOskFExVUmGdwkVOfdvBtjJXgSLALr
         Nhj/GTw0qyDULAsOkcQL2TZhC1uVLSSR/ChIXgkVVACpGCQawEdeaR+JqkV/l0JRjSEX
         seAA==
X-Gm-Message-State: AOJu0YxSSmzGuPFoWmUBwq/A+7IlbmHrS91Z23NRiT6MhZNw83vF8sq1
        qGimb8kRuez2v/b5VikO9/f5qC2zrpFyKxTi3xQ8pA==
X-Google-Smtp-Source: AGHT+IGzqSI/4N0O+uBLCgWpHnZQ/KjFk/2YxShtMcrzVkLghNvTpuuTYMXDbPq+9NIOiL3zDqHkNIwUl487VlxTGZE=
X-Received: by 2002:a17:90a:c254:b0:27c:fafd:f785 with SMTP id
 d20-20020a17090ac25400b0027cfafdf785mr3051885pjx.47.1697022921393; Wed, 11
 Oct 2023 04:15:21 -0700 (PDT)
MIME-Version: 1.0
References: <20231003155010.3651349-1-revest@chromium.org> <ZSMhd-TnoKm2u1vK@debian>
In-Reply-To: <ZSMhd-TnoKm2u1vK@debian>
From:   Florent Revest <revest@chromium.org>
Date:   Wed, 11 Oct 2023 13:15:10 +0200
Message-ID: <CABRcYmLvh5fiHGdcv-fmP7SP6U99Ni1ePYgMg5Npjz3qBViKUg@mail.gmail.com>
Subject: Re: [PATCH] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, joey.gouly@arm.com,
        akpm@linux-foundation.org, keescook@chromium.org,
        catalin.marinas@arm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Oct 8, 2023 at 11:39=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Please use semantic newlines.
>
> $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>        In the source of a manual page, new sentences should be started
>        on  new  lines,  long  sentences  should be split into lines at
>        clause breaks (commas, semicolons, colons, and so on), and long
>        clauses should be split at phrase boundaries.  This convention,
>        sometimes known as "semantic newlines", makes it easier to  see
>        the  effect of patches, which often operate at the level of in=E2=
=80=90
>        dividual sentences, clauses, or phrases.

Oops, looks like I missed the "Style guide" section of CONTRIBUTING,
sorry about that! I will fix it and re-spin :)
