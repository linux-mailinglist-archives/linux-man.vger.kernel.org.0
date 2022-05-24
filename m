Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3435C5322D9
	for <lists+linux-man@lfdr.de>; Tue, 24 May 2022 08:08:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234708AbiEXGIY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 02:08:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232516AbiEXGIX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 02:08:23 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1E416A07A
        for <linux-man@vger.kernel.org>; Mon, 23 May 2022 23:08:21 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id v5so13623647qvs.10
        for <linux-man@vger.kernel.org>; Mon, 23 May 2022 23:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=w3zV7+KMEHm30lej+bncDZdL2Egb0TsZPw2LdqwasmE=;
        b=fRYu9JSrDH8FttIxkswsH8poVxBMVmCY+ynUHPWEekRkPUyMllAna4e1R5nmKV6hvW
         xMV/rhOmPHqSSA/UzfB214ow4YbuMDAGF/ihXMsrdFkFOghwILta7l++1XrmJnNXqvQF
         546SrgwdiCQWnw+u5L4WRO6KyS4SB1a/iyhtmlSW432YkmTG+2z1TVGD7OdCLP6BP7mp
         5OFoi7Lfx1GObAmIjQi6rbKNYevAbr6+oKkq0HTah3oU+aRISeGStBHntox8VCwzEjwS
         DDE3gxly7dhlLXpa/Z+NQOsogepfc8Pp55lDhkB2FnNtTX3rK4jPGiq9L5d0MiO5Xo6m
         Uo4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=w3zV7+KMEHm30lej+bncDZdL2Egb0TsZPw2LdqwasmE=;
        b=TM+gVzkzHDqnCzCLculxSQItTQlsShOVnR/3QSscdQW9BdQzjz51Ei+yY6dp8kYrB0
         g6DT2WyBTpCiTy6IuNDKwQEcL2Y/ZENG0FlJNtEuSbV01vLJ26y5CRo43HJZVPRNTttE
         pVu00ZoB9zlpx3c1U7uD9WHJb96GXESajRZUUSDszSxWPKMJg+dVWXykokQl/FG3Frdj
         35CEZgDWnGzKypeE1kko6WEWPWQdz2a10uCjwJ2XQJFjCZg8fTFEpgk4JrSm84lD4+gt
         qUrcJXreXAcm7KACgtZKvxAaD/96Y3sMxW7P60FPvdrCEqwEF72RYf7Jnh8Nh+U9/39J
         JWTA==
X-Gm-Message-State: AOAM533IKsrZ+eNWUMNcKCvteUfGHntfmnLweD3LdY0Cf4nc7xMol9Q+
        +reTopyOXtJ8goxADS6cZD0FP4UzYKWnMg==
X-Google-Smtp-Source: ABdhPJwkBf0iclcGK8iACb3cOrkTeFiigx8dfziJEjhozjKW96+rDc+n9wadOQfx61TjiDDznLkQ5g==
X-Received: by 2002:a17:902:c409:b0:161:b135:87c9 with SMTP id k9-20020a170902c40900b00161b13587c9mr26407856plk.94.1653372490793;
        Mon, 23 May 2022 23:08:10 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:7819:7a08:e8dd:fe8f])
        by smtp.gmail.com with ESMTPSA id d10-20020a17090a2a4a00b001ded49491basm1268679pjg.2.2022.05.23.23.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 23:08:10 -0700 (PDT)
Date:   Tue, 24 May 2022 16:07:59 +1000
From:   Matthew Bobrowski <repnop@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Amir Goldstein <amir73il@gmail.com>,
        Gabriel Krisman Bertazi <krisman@collabora.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>
Subject: Re: [PATCH RESEND v5] fanotify.7, fanotify_mark.2: Document
 FAN_FS_ERROR
Message-ID: <Yox2P0x41l797my5@google.com>
References: <20220520180935.37796-1-krisman@collabora.com>
 <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
 <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com>
 <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>
 <e8daa69c-8f07-6fe7-8e63-96e23f8deec6@gmail.com>
 <YowBsihg5Zwo6CfS@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YowBsihg5Zwo6CfS@google.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, May 23, 2022 at 09:50:42PM +0000, Matthew Bobrowski wrote:
> On Sun, May 22, 2022 at 11:37:25PM +0200, Alejandro Colomar wrote:
> > Hi Amir,
> > 
> > On 5/22/22 18:12, Amir Goldstein wrote:
> > > It is applied on top of:
> > > 
> > > https://lore.kernel.org/linux-man/20220514131346.10171-1-alx.manpages@gmail.com/T/#u
> > 
> > Okay, I see that other one is pending some rewording, so I'll hold this one.
> > 
> > > 
> > > We have a rather long backlog of man page updates pending merge
> > > from Matthew, Gabriel and myself.
> > > We need to merge them by order.
> > > The entire stack is available in [BRANCHES] on my github tree [1].
> > > 
> > > Let me summarize it for you again:
> > 
> > Thanks.  I'll write here what I know about the, just to be sure I didn't
> > miss anything.  If you need anything from me, please tell me.
> > 
> > > 
> > > FAN_REPORT_PIDFD v5.15 [fanotify_pidfd]
> >
> > Pending a rewording of a paragraph.
> 
> Right, I'll get around to this at some point today.

v6 has been posted [0], PTAL.

[0] https://lore.kernel.org/linux-man/83b96ea91e5da1bdc092b34ab92bd5d1db4dbee0.1653371709.git.repnop@google.com/T/#u

/M
