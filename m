Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2D374D1C2F
	for <lists+linux-man@lfdr.de>; Tue,  8 Mar 2022 16:45:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347951AbiCHPqY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Mar 2022 10:46:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347950AbiCHPqX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Mar 2022 10:46:23 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C6684EF6F
        for <linux-man@vger.kernel.org>; Tue,  8 Mar 2022 07:45:27 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id g19so6102481pfc.9
        for <linux-man@vger.kernel.org>; Tue, 08 Mar 2022 07:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=k7AOAbDgvMyKgPJXBhJ5AA2H0t0VxU8xNnG33U+1f0g=;
        b=BFg08DKD+r20Uw3/tJo1ReZr7/OL7Ksb89ZhTNZxqPO9xXtx2+wU1i1MgWoxIuBxnQ
         fH670SvqdgTDjgbH/t0xh70ytQxPlaeJLwM/9IsUF723V/uPBxZrUCPZFf2tahI3bxo2
         4pFO395yEJiuho0Hx/nBdz/oJDUlwEiQvSfQCQQPRPyv5V2bYcof86JuhiVMkHqOrQCe
         4DKHqkfYI4h9j5msstMLccS3gP9xG8Qol4K62clJmnXPeQZDqorV37hF94xIg5CRxH4N
         LTnz7vjt+YHbogwFgpvsVNv2lpNhrBI8nx05zANHZYOFUUHaXHIHqSjcslH/f1o5BCCM
         6dDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=k7AOAbDgvMyKgPJXBhJ5AA2H0t0VxU8xNnG33U+1f0g=;
        b=v8O+qZRLHABPrtFG/Qk6p9/Xdlyjuuu4oSaGxY0RziNiNV0uA+l1QsZl+czLNW0b5Z
         EfeMmS4+/JpeJ06CvYYrXWEBwkhF6p+RDa3ZZbVUNHIiLNKcjn1ZIazmoMjGU+PY8i5U
         6ZglAqN93dkDmPryfccTBHjWmmob74gMxke0l737ptPM0QtwurJGys/v50bkVi52SRiW
         LBktR4540z0MlpWoJ6iMTVS4iADXdBk7ymBslCQuuhhZ45K4I29HsMBUG2VPD344FFpm
         rC3Z1zA/4bMwcd4LDhP15hY19L/jnuEg9dRMGzLxIpDUSUNM49Zyh5DPh2XaBxa63YGS
         WBqA==
X-Gm-Message-State: AOAM530XGD6M9GL38fDYGA8HiNz4P2pvEle6ma8RcEVrlp5rT5dOgS8t
        4anX9N/deNB4NCbkRttarpLhBKZGh4wH1h7MXD4=
X-Google-Smtp-Source: ABdhPJzUSInok2tGIsJdAn8CeDK1EuUq4CgHeZ+VKMnxt3KuN6Uw8YGBK2pmgBPuXl9bz9L+EBxj0jodUy+aDgseiak=
X-Received: by 2002:a05:6a00:22c3:b0:4f7:7cb:26b0 with SMTP id
 f3-20020a056a0022c300b004f707cb26b0mr9934091pfj.47.1646754326739; Tue, 08 Mar
 2022 07:45:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac4:9b91:0:b0:4a2:82a2:ea2e with HTTP; Tue, 8 Mar 2022
 07:45:25 -0800 (PST)
Reply-To: selfridgeslimiteduk@aol.com
From:   "Selfridges & Co. Limited" <infoselfridgesco.shop@gmail.com>
Date:   Tue, 8 Mar 2022 07:45:25 -0800
Message-ID: <CA+kTW-VOvmprWpuwaeBtTfQreRKgKQsZVnipU7P8TabYcc1UAw@mail.gmail.com>
Subject: Product Inquiry
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:429 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [infoselfridgesco.shop[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.6 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

 We are looking to buy your products and partner with your company, can you
 please send us your Catalog or your website to learn more about your
 products or prices list by email and if we can make some order with you and
 start a long-term partnership.

Can your company supply us? and give us more information about the
 possibility to become one of your regular Wholesale? Our Payment terms are
 by swift within 30 days net.

 Best regards.
 Waiting for your response.
Sebastian Manes
 buying and merchandising director
 Selfridges & Co. Limited
 www.selfridges.com
