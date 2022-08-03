Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 017895887E9
	for <lists+linux-man@lfdr.de>; Wed,  3 Aug 2022 09:27:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234828AbiHCH1P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Aug 2022 03:27:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234709AbiHCH1O (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Aug 2022 03:27:14 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 51E081AF3C
        for <linux-man@vger.kernel.org>; Wed,  3 Aug 2022 00:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1659511632;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ZU29zenpPMRvDIBuw/oHEjxibzWjE0QYMU7DVKxPFH8=;
        b=jNnjBEmMZlxntSCbjk2ttKSVweclMiAcYbu7E6KASwuA9J/VLZCYKdu4i8xWFAjhtOlA4E
        OlToKznZuK1TUy+kwSMraNfM462BwMXsxSYmLAyRiFQx+BTSqCYm6+mq/ZHalMFxBAlRL6
        3mVwMGwHhVyNKNpvBUa1XCXgMMpIADs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-149-JqaJCdfMMlOS3md9S0yeRw-1; Wed, 03 Aug 2022 03:27:07 -0400
X-MC-Unique: JqaJCdfMMlOS3md9S0yeRw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5FCBA802E5C;
        Wed,  3 Aug 2022 07:27:07 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.192.122])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id CA8A240CF8F0;
        Wed,  3 Aug 2022 07:27:05 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     GUO Zihua <guozihua@huawei.com>
Cc:     <linux-man@vger.kernel.org>, <alx.manpages@gmail.com>,
        <mtk.manpages@gmail.com>, <Jason@zx2c4.com>, <ebiggers@kernel.org>
Subject: Re: [patch] random.4: Update description about O_NONBLOCK flag
References: <20220802035336.33772-1-guozihua@huawei.com>
Date:   Wed, 03 Aug 2022 09:27:03 +0200
In-Reply-To: <20220802035336.33772-1-guozihua@huawei.com> (GUO Zihua's message
        of "Tue, 2 Aug 2022 11:53:36 +0800")
Message-ID: <87y1w5dby0.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* GUO Zihua:

> diff --git a/man4/random.4 b/man4/random.4
> index bea860e7f0d7..5b2094931449 100644
> --- a/man4/random.4
> +++ b/man4/random.4
> @@ -68,7 +68,12 @@ high quality randomness, and can afford indeterminate =
delays.
>  .PP
>  When the entropy pool is empty, reads from \fI/dev/random\fP will block
>  until additional environmental noise is gathered.
> -If
> +Since Linux 5.6, the
> +.B O_NONBLOCK
> +flag is removed as
> +.I /dev/random
> +will no longer block except during=20
> +early boot process. In eariler versions, if
>  .BR open (2)
>  is called for
>  .I /dev/random

Is =E2=80=9Dis removed=E2=80=9D correct here?  Should it be =E2=80=9Cis ign=
ored=E2=80=9D instead?

Thanks,
Florian

