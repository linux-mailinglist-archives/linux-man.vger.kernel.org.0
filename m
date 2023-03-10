Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34A876B52E4
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 22:31:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230426AbjCJVbh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 16:31:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231641AbjCJVb1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 16:31:27 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38A946EA8
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 13:31:22 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id p26so4308098wmc.4
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 13:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678483880;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KSBkH3+D9W+G9TS2OMqOTXcMDQkKRw2iNv8LxDcGHt4=;
        b=QqzU3/kQRA5ts16Kbv5N9Oi4cQ9hB24ps0PTme1G3HXN0Inn1ZYrf7at4ZW4Oq8TWe
         +En4qEObeMa9J0dLCSEbxdzbFrekJJ+ZLk37B9Yzn8bt8TtyCFx0KJ3UfK/8IIhrs5mv
         Qb8qzDVHmtg8UidEP0DlQ+yknpdlXSmG3JM8n5QUhLyUlpROKxx4QZ7h50Zg9nNiaNj8
         yPf4lGpVrmrECKJ59bmlCcuGzpWeLDowUirK49ei2aS/6NACAc7zOyQqxygaSPfDccHH
         Sd8gGXoivXm6BW5UsHfRXohCYqLTnizjW2z+GYu69N2Eqg5r0kZZ/8TUL9mWJvaDUOWj
         hpdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678483880;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KSBkH3+D9W+G9TS2OMqOTXcMDQkKRw2iNv8LxDcGHt4=;
        b=iShn6JpW8cxhlP5ktFbpfWRQGGtRTE3BF0s0k9eMiKV3LgiD/Dz28ILkCp9FuuqYfC
         jryQiqC8zI+t7ZAuHKZPVDycQ5MPuWlZTIS1ghoE5MyuDZHsaHRlliu0WdGP+/ij9ODj
         ZXaKU8A+Fq8lgs79GuttbQRaqZ5JkgmNwsXTS+wtCVdjA7IlM4uBJD1A9ih/XtTFwSer
         jQvh0E3LZtx5BFqJXmZt1bOuJmovzCl4+7B7gOpEYZmIe3WxZlbZWLQDXbUmTb3EepEH
         TKnVfkhx6zKUt6NijZ23lyOQfDTNoTAMRkthmFef8XY/gUOVJ+gh/6hHF5cU8q2Un9yT
         ASwQ==
X-Gm-Message-State: AO0yUKUVuXt3AuqoXQYIt9tKMt4E9wWFgPag2g6oTKdjmk+TZV3FCnw0
        MmNUIW5tPa0D5kerZMDBnvfdKzfn4SE=
X-Google-Smtp-Source: AK7set+u+ee72E8xENAK7Gf1SK6rYaqQFIwSF5KGN7T0dSym+DtNCKGkH/b6sin+DGNNaYrTZUp78Q==
X-Received: by 2002:a05:600c:34d5:b0:3ea:f882:bb3d with SMTP id d21-20020a05600c34d500b003eaf882bb3dmr4077171wmq.4.1678483880733;
        Fri, 10 Mar 2023 13:31:20 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id s6-20020a7bc386000000b003db06224953sm942195wmj.41.2023.03.10.13.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 13:31:20 -0800 (PST)
Date:   Fri, 10 Mar 2023 22:31:19 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        linux-man@vger.kernel.org, landlock@lists.linux.dev
Subject: Re: [PATCH v3 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; Linux 5.19)
Message-ID: <20230310.3c71a20ff2de@gnoack.org>
References: <20230304171607.8301-1-gnoack3000@gmail.com>
 <20230305.d639b17946bd@gnoack.org>
 <cb3d6b3e-0c9b-635e-380a-c79e36ae8ede@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cb3d6b3e-0c9b-635e-380a-c79e36ae8ede@gmail.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex!

On Fri, Mar 10, 2023 at 01:31:22AM +0100, Alejandro Colomar wrote:
> On 3/5/23 11:24, Günther Noack wrote:
> > I feel that implementing the full generic "best effort" fallback logic
> > would complicate the example too much:
> >
> >  [...]
> 
> I prefer if examples assume latest and greatest kernel.
> 
> Examples of how to support old kernels would be good in complete
> tutorials, but over-complicate a short example.

Thank you for the review!

Fair enough, let's use the variant then where we just assume the
newest kernel -- that is the code which we already have right now, in
fact. I'll add a small remark to point out the place where people
might want to handle the backwards compatibility with older kernels.

–-Günther
