Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F09FA784790
	for <lists+linux-man@lfdr.de>; Tue, 22 Aug 2023 18:27:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237768AbjHVQ1R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Aug 2023 12:27:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237774AbjHVQ1Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Aug 2023 12:27:16 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79C3ACF2
        for <linux-man@vger.kernel.org>; Tue, 22 Aug 2023 09:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1692721578;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=yqMoCJAcje6ZtjvICkyOgjmptBOrvvrOe/ObFsZrI0Y=;
        b=eGL4G023Yzg+eCdQte1VU2M2wvSdxn2nbXAvpQ0CcxeBb41odNVljBbnhrfSU0X/6ZrK/Q
        iISGYXlacz4BDbbxbKmlmqJCtWG2Zen43fSDIgqoNo6rnuy6bDKNYK4WalqZ/294ScJgZF
        HKvV2dnkgh1ecJtK0dqK9phL/yEA+WY=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-213-hftDbnS2PDC5N6Yf1mxlxQ-1; Tue, 22 Aug 2023 12:26:16 -0400
X-MC-Unique: hftDbnS2PDC5N6Yf1mxlxQ-1
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-51a5296eb8eso3155293a12.2
        for <linux-man@vger.kernel.org>; Tue, 22 Aug 2023 09:26:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692721575; x=1693326375;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yqMoCJAcje6ZtjvICkyOgjmptBOrvvrOe/ObFsZrI0Y=;
        b=fYtiZEihfAzBNyPPTBPNQ7rJ/6vJeXgZXhXj/axXYR5NYuMoTCSXJujSGcJZ6jy4Pd
         wWg7xmpK2jg0UyQyKnyKntNtBpUA/jM4oArWX287bxLyNTV59QyiQTUH1q80oqC/bDk1
         G2DafQXJEewIzTZ8ubpJXRLHCUixfcr/ijo8oK2ldK25wlWHt8cUa+3/s7TeZa5QC/E6
         J5cyj++LrX6A/+inIWdFdkJM+ih+4CegbT3/l3ez8IESzxW0qpfSrFC9F6VR/xwmtVRq
         oJbl+/iATkOiB9+GDfsMs3LTlskhQIMqZ1zmknBvxV0BBym93Cuo3sroXXgprdO6v8C6
         k/ow==
X-Gm-Message-State: AOJu0Yxw1Cnqs602judxtCMwRDMv4GFkzLQv0Vl4bzwf9gDI+RK61Eyf
        NoIeEUgUWqOAqaDqUM+zVJDu99bKnDiKYdiMSLo2z92d/UxomhCJwF1DgDQRDun0x8Woxcvzx24
        0hfyf65eFDNZYT1CFgDuR
X-Received: by 2002:a05:6402:505:b0:525:3e99:8ab9 with SMTP id m5-20020a056402050500b005253e998ab9mr8011459edv.10.1692721574939;
        Tue, 22 Aug 2023 09:26:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhJinNts8zkajtTIRFRkRv5KFi7gFKsXwa5CmuqO8IyIaZkVCTXJujs/wAz1kxL826d3eQAg==
X-Received: by 2002:a05:6402:505:b0:525:3e99:8ab9 with SMTP id m5-20020a056402050500b005253e998ab9mr8011449edv.10.1692721574658;
        Tue, 22 Aug 2023 09:26:14 -0700 (PDT)
Received: from cremorrah (ip-86-49-234-148.bb.vodafone.cz. [86.49.234.148])
        by smtp.gmail.com with ESMTPSA id e9-20020a056402088900b00525761581e3sm8019803edy.56.2023.08.22.09.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Aug 2023 09:26:14 -0700 (PDT)
Date:   Tue, 22 Aug 2023 18:26:12 +0200
From:   =?utf-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
        Glibc <libc-alpha@sourceware.org>
Subject: Re: [PATCH] abort.3: Note that the glibc implementation is not
 async-signal-safe
Message-ID: <ZOThpIa46irPESgE@cremorrah>
References: <07404317c21c86c517bc84357f91c4e179542906.1690372376.git.tgolembi@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <07404317c21c86c517bc84357f91c4e179542906.1690372376.git.tgolembi@redhat.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, 

gentle reminder that this has not received any attention yet.

Thanks,

    Tomas

On Wed, Jul 26, 2023 at 01:55:27PM +0200, Tomáš Golembiovský wrote:
> See https://sourceware.org/bugzilla/show_bug.cgi?id=26275
> 
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Glibc <libc-alpha@sourceware.org>
> Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
> ---
>  man3/abort.3         | 6 ++++++
>  man7/signal-safety.7 | 5 +++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/man3/abort.3 b/man3/abort.3
> index 0b57e10ed..827d5c9db 100644
> --- a/man3/abort.3
> +++ b/man3/abort.3
> @@ -85,6 +85,12 @@ terminates the process without flushing streams.
>  POSIX.1 permits either possible behavior, saying that
>  .BR abort ()
>  "may include an attempt to effect fclose() on all open streams".
> +.SH BUGS
> +The glibc implementation of
> +.BR abort ()
> +is not async-signal-safe,
> +.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=26275
> +in violation of the requirements of POSIX.1.
>  .SH SEE ALSO
>  .BR gdb (1),
>  .BR sigaction (2),
> diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
> index 3d6ddc7eb..431a22f89 100644
> --- a/man7/signal-safety.7
> +++ b/man7/signal-safety.7
> @@ -335,6 +335,11 @@ The glibc implementation of
>  is not async-signal-safe because it uses
>  .BR pthread_mutex_lock (3)
>  internally.
> +.IP \[bu]
> +.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=26275
> +The glibc implementation of
> +.BR abort (3)
> +is not async-signal-safe.
>  .SH SEE ALSO
>  .BR sigaction (2),
>  .BR signal (7),
> -- 
> 2.41.0
> 

