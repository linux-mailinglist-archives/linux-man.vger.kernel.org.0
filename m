Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 306057500DF
	for <lists+linux-man@lfdr.de>; Wed, 12 Jul 2023 10:12:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232073AbjGLIMF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Jul 2023 04:12:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232110AbjGLIL5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jul 2023 04:11:57 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72C92DC
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 01:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689149475;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=KZMpXHgm16Xj7onjhWXGvs7fm+X4qQzexzsUr27nvL8=;
        b=Wk+MhjUs3b+/hn5aBrVmFkvyhNnxduRy6M7zwyVglmZG1bGzjESbXcAPm9q5acEufZp1FX
        hd2boqpbErqdcpKQqO64hEbVL5yesR62IGZPF9mwP2D+PRycM/Gz5LufIPOA46TT15vgmS
        K347HGlBbHsrZTdpMybvgKSJBvuvnR4=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-378-B7UMzr26OmiTiNNFkswJQA-1; Wed, 12 Jul 2023 04:11:14 -0400
X-MC-Unique: B7UMzr26OmiTiNNFkswJQA-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-63788123d11so62868386d6.0
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 01:11:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689149474; x=1691741474;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KZMpXHgm16Xj7onjhWXGvs7fm+X4qQzexzsUr27nvL8=;
        b=MAIddgI+1FBeABHAly9YZWKIQ2d7znTU0pEIsDCfmOpgpx1tUoQdCJGctYsPEQoHz4
         xReRGaKzipAJJ88H9NhB1LHuwxHkJ6GUShtGZH+bzkET8u+2k4MHh7KKroAieFG6YsXM
         phHYyhFTLwVkoDjMGh5SZicML0IBcYfbGw89b2//N7YoSJS9cgkrrlYyiVgj9C1QVL1p
         dwBsFnQpuQuWoFX5fYW1tFAute4yqH1u5b9VmvhsNHlo2Wv6j0BKbvJpTW1Esj3AKKDE
         n3swlPkKvgS71PtAWeIgD2HBrru/H357cdy/oSdUpm98Ci4Rr1WAeseAoDd+rtSnBZ/0
         UzkQ==
X-Gm-Message-State: ABy/qLYXcj3Ecj2qkH/f3vC4rvG70/g7pLEuXjiHlAAV66XDkuhzawuD
        uTwQDHPH/j8xOilLTiEkDiuMMiGBF/psYtlMTgTVdtW6eHOwHNk90+eH+AjGsOFMjY/VSZYxmQO
        3wNS7h2g/hm80yfDO4hmDP1syR50X
X-Received: by 2002:a0c:f2cd:0:b0:626:16ba:539f with SMTP id c13-20020a0cf2cd000000b0062616ba539fmr16146582qvm.5.1689149473975;
        Wed, 12 Jul 2023 01:11:13 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGxkzVGKALwiK0int6wfBp/TWhZI9TiHOAV67VbIu4xp/ZEbm7PMRp/SC3Er0rlTSuBg+Gybw==
X-Received: by 2002:a0c:f2cd:0:b0:626:16ba:539f with SMTP id c13-20020a0cf2cd000000b0062616ba539fmr16146576qvm.5.1689149473738;
        Wed, 12 Jul 2023 01:11:13 -0700 (PDT)
Received: from cremorrah (ip-86-49-233-183.bb.vodafone.cz. [86.49.233.183])
        by smtp.gmail.com with ESMTPSA id u14-20020a0c8dce000000b0062de1ed9d15sm2001349qvb.102.2023.07.12.01.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 01:11:13 -0700 (PDT)
Date:   Wed, 12 Jul 2023 10:11:10 +0200
From:   =?utf-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] abort: clarify consequences of calling abort
Message-ID: <ZK5gHuquXody9x2b@cremorrah>
References: <6aa0c5c1dd37704e283794ed828461d1e0831780.1688997554.git.tgolembi@redhat.com>
 <20230710152150.b7lwmzwmuqjxxsiv@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230710152150.b7lwmzwmuqjxxsiv@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Mon, Jul 10, 2023 at 10:21:50AM -0500, G. Branden Robinson wrote:
> Hi Tomáš,
> 
> At 2023-07-10T15:59:28+0200, Tomáš Golembiovský wrote:
> [...]
> > Clarify the status reported by wait*() functions. The requirement
> > comes from POSIX specification.
> [...]
> > +The status made available to
> > +.BR wait "(2), " waitid "(2), or " waitpid (2)
> > +by
> > +.BR abort ()
> > +shall be that of a process terminated by the
> > +.BR SIGABRT
> > +signal.
> [...]
> 
> I believe Alex's preference in the Linux man-pages project is to
> document what is actually implemented, not to repeat normative language
> (paraphrased or not) from the POSIX standard.

Yeah, I don't feel strong about it and I have my doubts if mentioning is
useful anyway. It should be obvious from the fact that abort() raises
SIABGRT. I will drop that sentence. 

> 
> So glibc should be tested to verify the behavior it actually exhibits,
> and the language above then updated to describe that, noting any
> deviation from POSIX's prescription.

As a side note, in the normal situation glibc does what it should.
However, in the unlikely situation that raise() fails unexpectedly,
abort() tries to terminate the process with other means or loops for
ever if everything else fails to satisfy the condition that abort()
should never return.

    Tomas

> 
> The same can, optionally, be done for other libcs like musl.
> 
> Alex, please correct me if I'm mistaken.
> 
> Regards,
> Branden


