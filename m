Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FDD56E8129
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 20:22:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233549AbjDSSWF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 14:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233544AbjDSSWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 14:22:04 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B50265FEC
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:21:53 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id xd13so600932ejb.4
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681928512; x=1684520512;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8VvPsyz6RBZgV11MG2xxdwZH6KFa3nDQnHPy5mh6bao=;
        b=eHQB+NjIOc3xd1j8Dm/Ne6gNytsmKkKMapARgE41bbgDnjXGhOsHwbYGlnmWPVT8Vm
         2TRLJ1VVr31ByjtngAC9Xrwo0LrMLwmTBclJ2unrigS62E4dYdAYLh2OUXwcvb06gjBV
         p0ZwMtv5wzKR8rNzwEPiXo+GNxZRaoES5wrXX1AWEO1+B8eXwq7DDdYNOEpfEm+XrJLA
         5MnRcj5FLFIMCV0IOxHGvfCzBbLL7rwqfo8VWtPgq0PV/ClEi0ekZGKLbM7QwMyVJjeb
         SMNb7V/2XiWCfzgQdUhYjwxqdDaz+nkWeRxn5bLXNk7d9E5nzlgiaZ1LgnO1/ePzDpMH
         rDyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681928512; x=1684520512;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8VvPsyz6RBZgV11MG2xxdwZH6KFa3nDQnHPy5mh6bao=;
        b=lQwepsrLYjok6rN3NwYd0ZysEQhJzj3XI6MwWQNZ4rGade4/ERRT1YYeXMrAzDKVmR
         tr4zkpr/f7ayDAUxEJqP6iO2uJgJ72+lzvHUQn8/uexm/pwd9h9dwF7MfHuOUeqKGz7U
         ymY628NMekIkfjIY4n5fK7EBDBTerxu9Q26HhsEi5+Shla9kH6BFInUptmkJUKixkg11
         dvSuewc5zPekj7+2UcIqoqyFXCClIeq5Jb45TRVXQ5DkJmJXkUxJRjZVyiSZhS7P+oZz
         0tkSxUuIxzwVftPCwzFMdiT1kavqkcfsrv+5jhQylE1FzGCaeyIahOu4Ibpc3z29i9f0
         Q7lA==
X-Gm-Message-State: AAQBX9dGmfashuTA4kY0QCQiwIJ+envFQCRgxetOUUZlQ2Oj3rQ0XBo9
        n9sDgsTqAu3sENimgfzGcj0=
X-Google-Smtp-Source: AKy350amQx3ZAYNk2o+WFxWdKDBgdQM3WvlNG7jWop3dMyZjKeGZ3gQOLCQ1KrjeqYq5kBL5slKxuA==
X-Received: by 2002:a17:907:d305:b0:8aa:33c4:87d5 with SMTP id vg5-20020a170907d30500b008aa33c487d5mr8391078ejc.10.1681928512166;
        Wed, 19 Apr 2023 11:21:52 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id b10-20020aa7d48a000000b004fd1ee3f723sm8246944edr.67.2023.04.19.11.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 11:21:51 -0700 (PDT)
Date:   Wed, 19 Apr 2023 20:21:50 +0200
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v7 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Message-ID: <20230419.704027e98f41@gnoack.org>
References: <20230417172513.5731-1-gnoack3000@gmail.com>
 <20230417172513.5731-2-gnoack3000@gmail.com>
 <5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net>
 <84d7c516-41c2-cac6-b5f4-2348eb7201a9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <84d7c516-41c2-cac6-b5f4-2348eb7201a9@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Apr 18, 2023 at 04:24:49PM +0200, Alejandro Colomar wrote:
> Hi Mickaël,
> 
> On 4/17/23 22:45, Mickaël Salaün wrote:
> 
> [...]
> 
> >> +int abi = landlock_create_ruleset(NULL, 0,
> >> +                                  LANDLOCK_CREATE_RULESET_VERSION);
> >> +if (abi <= 0) {
> >> +    /*
> >> +     * Kernel too old, not compiled with Landlock,
> >> +     * or Landlock was not enabled at boot time.
> >> +     */
> >> +    perror("Giving up \- No Landlock support");
> 
> [...]
> 
> > As a side note, this syscall and this flag should never return 0, but if 
> > it does (e.g. because of weird seccomp filter), the errno value might be 
> > unspecified.
> 
> Hmm, good catch, we should test for `== -1`, rather than `< 0`.
> Michael Kerrisk explicitly wanted this, and I agree with him, as it makes
> the code slightly more readable (explicit).

Ack, I'll send a small follow-up.

–Günther

