Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D4DF751BB1
	for <lists+linux-man@lfdr.de>; Thu, 13 Jul 2023 10:35:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234418AbjGMIfq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jul 2023 04:35:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234468AbjGMIfT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Jul 2023 04:35:19 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 878E4448D
        for <linux-man@vger.kernel.org>; Thu, 13 Jul 2023 01:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689236769;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=j0xjvYNvA3LFBlOYyjvo6bta5YRavXJ+gtqfnlZHk4g=;
        b=MidEDqiI5wuw3iaJOT2s0SCra1nINZhPJ8Jozquerz7LjBpBHbZ9BBdjXMJ0+kZ92GjcMn
        +z8AHBz8qO+3QX+4A6PVuS9CGdK5I1UsS/JgJJREed5M1XV/IMY8gl39Oy5wOopv1HS97s
        SsZZD/GMBGC045YVYHSczffoGtYGy2Y=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-564-H9GwFPrwNvSNc9Y91l1R6Q-1; Thu, 13 Jul 2023 04:12:03 -0400
X-MC-Unique: H9GwFPrwNvSNc9Y91l1R6Q-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 841123C0BE24;
        Thu, 13 Jul 2023 08:12:03 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.19])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id EE8F4492B01;
        Thu, 13 Jul 2023 08:12:01 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Shani Leviim <sleviim@redhat.com>
Cc:     alx@kernel.org, linux-man@vger.kernel.org,
        automotive-devel@redhat.com, "Carlos O'Donell" <carlos@redhat.com>,
        Sergei Gromeniuk <sgromeni@redhat.com>,
        Gobinda Das <godas@redhat.com>
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe
 to MT-Safe
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
Date:   Thu, 13 Jul 2023 10:12:00 +0200
In-Reply-To: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
        (Shani Leviim's message of "Wed, 12 Jul 2023 21:46:37 +0300")
Message-ID: <878rbk1b8v.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Shani Leviim:

> @@ -169,6 +172,16 @@ is too small and
>  is unknown).
>  The string always includes a terminating null byte (\(aq\e0\(aq).
>  .\"
> +.PP
> +The automatically generated buffer for
> +.BR strerror ()
> +and
> +.BR strerror_l ()
> +is sufficient to avoid an
> +.B ERANGE
> +error when calling
> +.BR strerror_r ().
> +.PP

I think this gives the wrong impression that the pointer returned by
strerror/strerror_l can be used with strerror_r.  This is not the case
because the application does not own that buffer, or know its length.

Thanks,
Florian

