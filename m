Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A693A4E46B1
	for <lists+linux-man@lfdr.de>; Tue, 22 Mar 2022 20:30:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbiCVTcC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Mar 2022 15:32:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231261AbiCVTb7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Mar 2022 15:31:59 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2C90D79395
        for <linux-man@vger.kernel.org>; Tue, 22 Mar 2022 12:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1647977430;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=V5V/hUtU1eWPYAfu3Vkm3R/UNQxwyoHX973gqDqsE8I=;
        b=Zzxo9G70FBzJynPMM794vbWOaEJf4fIRDs9UifFO+hV5u/jp4oGMR9i7Lee/Pb2aCHV203
        sbW+8elGqcfWKSHXmJmZbMwbxRERaMP22B1e6c6d8L/URpLqeAvL/RPcdNqO1IEP0OjQVk
        4w3/6bQmuzBWHLqPxlng06nNZf6uGxE=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-608-YBIEXspmOcytOtgWdzEZZg-1; Tue, 22 Mar 2022 15:30:26 -0400
X-MC-Unique: YBIEXspmOcytOtgWdzEZZg-1
Received: by mail-qk1-f199.google.com with SMTP id 207-20020a3703d8000000b0067b14f0844dso12433514qkd.22
        for <linux-man@vger.kernel.org>; Tue, 22 Mar 2022 12:30:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V5V/hUtU1eWPYAfu3Vkm3R/UNQxwyoHX973gqDqsE8I=;
        b=q/TNsQIsI6aEWxwhPKC/n6rYino7rXplopPdLIFwL8LZ6iJzCvNE4R7LOwodcXgsJY
         RpVTvjAY3nDUJBCIW/A3oKXwHucLlZjmiKtmw92tIpqvIMrS4zri4QHIdF2QMSC1Uqza
         XbekEalWOgUZtqXK+Hli5HeFwDIlbxn+2YW7bMnMLkxFATYzBfvRb/UkW4jQUMci/K2n
         BPzQLbIWxS4CxMzbd20bVXb8Zm42E8Lbuaf6cd2r4plb3HsXMe4Ajj+/FDwYau3VfflE
         e0cVIXu/C4jghUGFJ6QKc65KUZlBalKO2L16OtAHkyO9wNWZ2kYaxFhn/r7DL/FrDyBL
         UljA==
X-Gm-Message-State: AOAM530367rjt/QgxjG91wokeOdyARMt0z5kNmbqnvLjkjYbCnT9dFLh
        aZpm3PYDoIbxY9+9BuhHn0wDufvXUUSfkH0gc/YZzlePUKm7nxy2Ik4G11eOrF5IcyXRxV1lksX
        lYvzHZ1uDwxsDWC2PdX82pgZ9nTIwuFiOnzax
X-Received: by 2002:a05:620a:c46:b0:67e:1559:559a with SMTP id u6-20020a05620a0c4600b0067e1559559amr16097359qki.437.1647977426248;
        Tue, 22 Mar 2022 12:30:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+VQun41HDweR1Q6kFjVMaBNO1gZRC3yTuomyULbugtJxnjMIxasm8DtUv+co5J5RPeBaDxYQKjXqd654EoCw=
X-Received: by 2002:a05:620a:c46:b0:67e:1559:559a with SMTP id
 u6-20020a05620a0c4600b0067e1559559amr16097353qki.437.1647977426061; Tue, 22
 Mar 2022 12:30:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220322192712.709170-1-mszeredi@redhat.com>
In-Reply-To: <20220322192712.709170-1-mszeredi@redhat.com>
From:   Miklos Szeredi <mszeredi@redhat.com>
Date:   Tue, 22 Mar 2022 20:30:15 +0100
Message-ID: <CAOssrKcJT=HCYW1tUwUaZbD8gi2CNh4__7Q6kqTPsdxF07dmBQ@mail.gmail.com>
Subject: Re: [RFC PATCH] getvalues(2) prototype
To:     linux-fsdevel <linux-fsdevel@vger.kernel.org>
Cc:     lkml <linux-kernel@vger.kernel.org>,
        Linux API <linux-api@vger.kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        linux-security-module@vger.kernel.org, Karel Zak <kzak@redhat.com>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        Amir Goldstein <amir73il@gmail.com>,
        James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: multipart/mixed; boundary="000000000000148ba905dad3a5c2"
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000148ba905dad3a5c2
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 22, 2022 at 8:27 PM Miklos Szeredi <mszeredi@redhat.com> wrote:
>
> Add a new userspace API that allows getting multiple short values in a
> single syscall.

Attaching a test program that allows arbitrary queries.

Thanks,
Miklos

--000000000000148ba905dad3a5c2
Content-Type: text/x-csrc; charset="US-ASCII"; name="getvalues.c"
Content-Disposition: attachment; filename="getvalues.c"
Content-Transfer-Encoding: base64
Content-ID: <f_l12j71mq0>
X-Attachment-Id: f_l12j71mq0

I2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8c3RyaW5nLmg+CiNpbmNsdWRlIDxzdGRpby5o
PgojaW5jbHVkZSA8ZmNudGwuaD4KI2luY2x1ZGUgPGVyci5oPgojaW5jbHVkZSA8c3RkaW50Lmg+
CiNpbmNsdWRlIDxzeXMvdWlvLmg+CgpzdHJ1Y3QgbmFtZV92YWwgewoJY29uc3QgY2hhciAqbmFt
ZTsJLyogaW4gKi8KCXN0cnVjdCBpb3ZlYyB2YWx1ZV9pbjsJLyogaW4gKi8KCXN0cnVjdCBpb3Zl
YyB2YWx1ZV9vdXQ7CS8qIG91dCAqLwoJdWludDMyX3QgZXJyb3I7CQkvKiBvdXQgKi8KCXVpbnQz
Ml90IHJlc2VydmVkOwp9OwoKCmludCBnZXR2YWx1ZXMoaW50IGRmZCwgY29uc3QgY2hhciAqcGF0
aCwgc3RydWN0IG5hbWVfdmFsICp2ZWMsIHNpemVfdCBudW0sCgkgICAgICB1bnNpZ25lZCBpbnQg
ZmxhZ3MpCnsKCXJldHVybiBzeXNjYWxsKDQ1MSwgZGZkLCBwYXRoLCB2ZWMsIG51bSwgZmxhZ3Mp
Owp9CgppbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQp7CgljaGFyICpzLCBidWZbNDA5
Nl07CglpbnQgcmVzLCBpLCBvLCBudW0gPSBhcmdjIC0gMjsKCXN0cnVjdCBuYW1lX3ZhbCBudnNb
MjU2XSA9IHt9OwoKCWlmIChhcmdjIDwgMykKCQllcnJ4KDEsICJ1c2FnZTogJXMgcGF0aCBuYW1l
IFsuLi5dIiwgYXJndlswXSk7CglpZiAobnVtID4gMjU2KQoJCWVycngoMSwgInRvbyBtYW55IGFy
Z3VtZW50cyIpOwoKCWZvciAoaSA9IDA7IGkgPCBudW07IGkrKykKCQludnNbaV0ubmFtZSA9IGFy
Z3ZbaSArIDJdOwoKCW52c1swXS52YWx1ZV9pbi5pb3ZfYmFzZSA9IGJ1ZjsKCW52c1swXS52YWx1
ZV9pbi5pb3ZfbGVuID0gc2l6ZW9mKGJ1Zik7CgoJcmVzID0gZ2V0dmFsdWVzKEFUX0ZEQ1dELCBh
cmd2WzFdLCBudnMsIG51bSwgMCk7CglpZiAocmVzID09IC0xKQoJCWVycigxLCBOVUxMKTsKCglu
dW0gPSByZXM7Cglmb3IgKGkgPSAwOyBpIDwgbnVtOyBpKyspIHsKCQlwcmludGYoIlslc10gPSAi
LCBudnNbaV0ubmFtZSk7CgkJcmVzID0gbnZzW2ldLmVycm9yOwoJCWlmIChyZXMpIHsKCQkJcHJp
bnRmKCIgRVJST1I6ICVzICglaSlcbiIsIHN0cmVycm9yKHJlcyksIHJlcyk7CgkJfSBlbHNlIHsK
CQkJcmVzID0gbnZzW2ldLnZhbHVlX291dC5pb3ZfbGVuOwoJCQlzID0gbnZzW2ldLnZhbHVlX291
dC5pb3ZfYmFzZTsKCgkJCWZvciAobyA9IDA7IG8gPCByZXM7IG8gKz0gc3RybGVuKHMgKyBvKSAr
IDEpCgkJCQlwcmludGYoIlwiJS4qc1wiICIsIHJlcyAtIG8sIHMgKyBvKTsKCgkJCXByaW50Zigi
KGxlbj0laSlcbiIsIHJlcyk7CgkJfQoJfQoJcmV0dXJuIDA7Cn0K
--000000000000148ba905dad3a5c2--

