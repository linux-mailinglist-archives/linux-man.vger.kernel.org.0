Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F7595329AA
	for <lists+linux-man@lfdr.de>; Tue, 24 May 2022 13:50:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234804AbiEXLtR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 07:49:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232178AbiEXLtQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 07:49:16 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DA19E22BCA
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 04:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653392955;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=rgIDeWxC3djqOk4rgVYkAcUq2tlyWDpCI85d3iL/EzA=;
        b=UW7cy3tA7T/m7Pi1Ss+c1OlWVBBWu3LSpfqbC/2eJoc+zkwuUYMwe66CqlFLC0a/WDG2aA
        Xkozvg74UOBBfiD3FWAYHSCTJDCA3jwBKwTa5AGWUW0ENV5sd5wP5kbGrd2Hr07V0ZHejw
        l3I12NYNv843lKef51WABLUPk0vLo8I=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-604-Bc3oRjzCOpCUgJuKlyaT5Q-1; Tue, 24 May 2022 07:49:08 -0400
X-MC-Unique: Bc3oRjzCOpCUgJuKlyaT5Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 41A263C7B12B;
        Tue, 24 May 2022 11:49:08 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.192.56])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F0BA1121315;
        Tue, 24 May 2022 11:49:06 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Matthew Bobrowski <repnop@google.com>
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com,
        linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com,
        krisman@collabora.com
Subject: Re: [PATCH v6] fanotify: Document FAN_REPORT_PIDFD Feature
References: <83b96ea91e5da1bdc092b34ab92bd5d1db4dbee0.1653371709.git.repnop@google.com>
Date:   Tue, 24 May 2022 13:49:04 +0200
In-Reply-To: <83b96ea91e5da1bdc092b34ab92bd5d1db4dbee0.1653371709.git.repnop@google.com>
        (Matthew Bobrowski's message of "Tue, 24 May 2022 16:03:37 +1000")
Message-ID: <87v8tvtakv.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Matthew Bobrowski:

> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 7f9a21a52..03d0b1711 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2

> +.BR pidfd_open(2).

I think this should be:

.BR pidfd_open (2).

> +.BR fanotify(7).

Likewise here =E2=80=A6


> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index f8345b3f5..8b3b7f7d2 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7

> +.BR close(2).

=E2=80=A6 and here.

The whitespace is significant: it switches between highlighted and
regular parts, without adding any whitespace.

Thanks,
Florian

