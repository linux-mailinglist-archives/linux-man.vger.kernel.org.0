Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E277D7DE188
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 14:34:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344051AbjKANTb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 09:19:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344095AbjKANTa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 09:19:30 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15C34F7
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 06:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1698844726;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=DSv2DzNgtmTMp0Zpn8vNNj88K76tIu0ml3mAsMedefM=;
        b=IFjb1FqHetX4MXGAx3JImsVG/hKfVxT8SBKi8nZtSVsYxycqo9ByUDBsIY2y8FRi2CqLrv
        iZfa3Hdq86LUD0MgFsXU0/fyWvKNjbFp5ZWXWN3AvEFMjTyd+c7Lvo5NZRO31N5440XMY4
        hpbEORGiomwNsiaj3pCuuEeSvcCc6S0=
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com
 [209.85.216.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-86-AUrjQnDjMGqvZ9y40gtHwA-1; Wed, 01 Nov 2023 09:18:43 -0400
X-MC-Unique: AUrjQnDjMGqvZ9y40gtHwA-1
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2803ea89cefso2829279a91.2
        for <linux-man@vger.kernel.org>; Wed, 01 Nov 2023 06:18:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698844722; x=1699449522;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DSv2DzNgtmTMp0Zpn8vNNj88K76tIu0ml3mAsMedefM=;
        b=Tfk7irKCA+hFDOFr9UrP1IqT22VRkcSgXRtEimkikjda0DQfnDm/a2BMsV2RmQqMgH
         2dT0kWNvMaV2pNby4Ts8d9Nc2vzlXJceQo4AE4vr7QFoY4RpgCVrDA8oh7dITjqzmMfb
         wqetlBXJlyQRjpKVj4NhrDIMY5c5IscyUNflCQmmLGgJExxq3L2kGD5jxzNaVnJ9+NrW
         7ZwfbPuWeLQ6k5O5aQgH7i9fU5aKFXRqOa543m/MXiJWrxzZ7Rl0LPVSTOiHrwN+nTRK
         j+wkdWSiAZK2tyrsFA/xKH6j+qvT/e1ii/37qm8rbwyR42R3CMk/AjE4ynPTLaF9iHc4
         eQGw==
X-Gm-Message-State: AOJu0YzwjVP21uhNOjF2Tx3WNRyIfHCjGfXvQx+5WZCPqx4dtZZaCg5u
        aZ5+q6PTOGRtoQeoBRTaICI0AInEe0ni/2qGfg5oUvOsD45C88vf7beHECBsPax5cZlcvhgM1Px
        pH7U5SuJYLMJG1thEBgnxZTNltJuGOCTSx1oV
X-Received: by 2002:a17:90b:23c7:b0:280:1dca:f6a3 with SMTP id md7-20020a17090b23c700b002801dcaf6a3mr10441074pjb.43.1698844722030;
        Wed, 01 Nov 2023 06:18:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoEirGTDasAqUjXQGnKlAtyrPulCGVMINuDBdc2ZYq9ZRuzlBBKwBLe80AwfvqXtV4VYiPlMQ+XXMQ63Z1BoA=
X-Received: by 2002:a17:90b:23c7:b0:280:1dca:f6a3 with SMTP id
 md7-20020a17090b23c700b002801dcaf6a3mr10441056pjb.43.1698844721642; Wed, 01
 Nov 2023 06:18:41 -0700 (PDT)
MIME-Version: 1.0
References: <20231025140205.3586473-1-mszeredi@redhat.com> <20231101-urenkel-banal-b232d7a3cbe8@brauner>
In-Reply-To: <20231101-urenkel-banal-b232d7a3cbe8@brauner>
From:   Miklos Szeredi <mszeredi@redhat.com>
Date:   Wed, 1 Nov 2023 14:18:30 +0100
Message-ID: <CAOssrKcf5NQ8pGFWKq2hG9BmFZN-0rhhO+MuYCe7fVfmFO4DAA@mail.gmail.com>
Subject: Re: [PATCH v4 0/6] querying mount attributes
To:     Christian Brauner <brauner@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-api@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        Karel Zak <kzak@redhat.com>, Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Amir Goldstein <amir73il@gmail.com>,
        Matthew House <mattlloydhouse@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        Arnd Bergmann <arnd@arndb.de>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Nov 1, 2023 at 12:13=E2=80=AFPM Christian Brauner <brauner@kernel.o=
rg> wrote:

> I've renamed struct statmnt to struct statmount to align with statx()
> and struct statx. I also renamed struct stmt_state to struct kstatmount
> as that's how we usually do this. And I renamed struct __mount_arg to
> struct mnt_id_req and dropped the comment. Libraries can expose this in
> whatever form they want but we'll also have direct consumers. I'd rather
> have this struct be underscore free and officially sanctioned.

Thanks.

arch/arm64/include/asm/unistd.h needs this fixup:

-#define __NR_compat_syscalls 457
+#define __NR_compat_syscalls 459

Can you fix inline, or should I send a proper patch?

Thanks,
Miklos

