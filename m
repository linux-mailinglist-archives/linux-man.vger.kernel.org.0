Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6244D56719A
	for <lists+linux-man@lfdr.de>; Tue,  5 Jul 2022 16:54:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231631AbiGEOyN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jul 2022 10:54:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231721AbiGEOyL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jul 2022 10:54:11 -0400
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4018560F7
        for <linux-man@vger.kernel.org>; Tue,  5 Jul 2022 07:54:11 -0700 (PDT)
Received: by mail-vs1-xe2e.google.com with SMTP id 189so12171371vsh.2
        for <linux-man@vger.kernel.org>; Tue, 05 Jul 2022 07:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=k7izWfIBBaFev3famyk9p7ENglhF6jIeWP6CHQZlG80=;
        b=PO0IEpby5PNLAZUwRXC2LqRYu4WlQNIb5IKyDFHpbIXg6478rNnRE5oGbevMluDJiq
         cG4y2DqTgK+Q6Ws2eJBEVqz36AT3Ei0ovXYzNbaRpLiP9BnQ2IOr8H1R8+W327tZ/Dem
         kNESUHLxf8Er2+gKecYmOo3VSonAgAomkFCel4+E2qglEuRYZ6iHXQXz9R/eo0yNpJdx
         HUoiNjtm0+mmcY+dw1wduPeUb1ZiQv6hPQCt693A3eARTQy2fEXKWtYlvxX7Zgrzt+ZO
         L3Cus75yE/hy9ncIFYHratbq72GFuD3K5A3KHBfzPslYacendKZy9NBpUn1D0CmeTL6w
         RB1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=k7izWfIBBaFev3famyk9p7ENglhF6jIeWP6CHQZlG80=;
        b=ehLMw4EmcvD8OgGdwXNX0jDzdiNHvbQ1bbyLNzZR/ij9Mjc6jpKh43iYTzS+4X00Bb
         e46eVfS1414D3hXu99nWYCbp/lhpO1d1EqtbKJW5H38teP/9eMqk3rYXhLqS6K+r69dR
         +QUMfuvX+90980ohstXKAMtFJ95fRSLwZgvAx9+wLcos6Fw53qvWK8e93gvsGr02Mxaz
         skKwmejpd92KmmFWp/YHhiWVGx0JU2c3vHj4RYRywj//viBdg8ezJVy+NjMRS8wv/sHx
         jBgpoW8s/GWWkc/B8FMjKH9N/7DqOH+qdX/8KKQtN48RzzfDAzjs3ToGSwLtgbSflpKa
         dc5g==
X-Gm-Message-State: AJIora9PSNPdtfPsylkBHT4qtxk+PXOiU5bn2cvjWP4eI/eQdzWyQqku
        76gb/E+pjeXz+HKRrW9QTf5fKRnQlVrHh+dVV3w=
X-Google-Smtp-Source: AGRyM1vDOfjXMEJt9DoQsAQHeVEJ9saJpDz2593zmLa/QLJSvOKdnw2B5UGlgsuItNgbKLQ9uYjZNm1dyWi1gjm8iX4=
X-Received: by 2002:a67:eac9:0:b0:354:438c:bf05 with SMTP id
 s9-20020a67eac9000000b00354438cbf05mr20500846vso.0.1657032849644; Tue, 05 Jul
 2022 07:54:09 -0700 (PDT)
MIME-Version: 1.0
Sender: andersonmore123456@gmail.com
Received: by 2002:a05:612c:2414:b0:2d0:f8c0:5eda with HTTP; Tue, 5 Jul 2022
 07:54:09 -0700 (PDT)
From:   Armed Zango <mrarmedzango@gmail.com>
Date:   Tue, 5 Jul 2022 02:54:09 -1200
X-Google-Sender-Auth: 6bfJYdZ2jt-6TRPY0smfJwZDEnM
Message-ID: <CAGRFRQN64xDPZ00+sv9N8wx0usFWoE4s3grtBv-wVT_R1PobmQ@mail.gmail.com>
Subject: URGENT RESPONSE AND TRUST
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.4 required=5.0 tests=ADVANCE_FEE_5_NEW_FRM_MNY,
        BAYES_99,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FILL_THIS_FORM,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,LOTS_OF_MONEY,
        MILLION_USD,MONEY_FORM,MONEY_FRAUD_8,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,SUBJ_ALL_CAPS,T_FILL_THIS_FORM_FRAUD_PHISH,
        T_FILL_THIS_FORM_LOAN,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY,URG_BIZ
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:e2e listed in]
        [list.dnswl.org]
        *  3.5 BAYES_99 BODY: Bayes spam probability is 99 to 100%
        *      [score: 0.9984]
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [andersonmore123456[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mrarmedzango[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 MILLION_USD BODY: Talks about millions of dollars
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.6 URG_BIZ Contains urgent matter
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.0 FILL_THIS_FORM Fill in a form with personal information
        *  0.0 T_FILL_THIS_FORM_LOAN Answer loan question(s)
        *  0.0 MONEY_FORM Lots of money if you fill out a form
        *  0.0 MONEY_FRAUD_8 Lots of money and very many fraud phrases
        *  0.0 T_FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
        *  0.0 ADVANCE_FEE_5_NEW_FRM_MNY Advance Fee fraud form and lots of
        *      money
        *  2.8 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

-- 
I am Mr.Armed Zango,from west Africa i have a business deal to share
with You in the sum of US$10,200.000.00 million united state dollars,
that is been held in our Bank here in (B.O.A) bank of Africa the fund
mentioned rightful belong to one of Our late client who deposited the
money in our bank here ever since he died nobody have been able to
apply to claim the fund so I wish that you will come and assume as his
foreign business partner also note this business is risk free not to
be sacred or doubt is real please my dearest one also Noted.Once we
succeed in Transferring this fund to your wish provided account in
your country it will shared among us in agreement of 60%40 i believe
that after this deal joy and happiness will be on our face and
family's please reply to me with your details so we can move on with
this great plan ok.


Your Full Name.......

Your Age&Sex........

Your Marital Status......

Your Country Name.......

Your Phone Number......

Your Occupation.....

Your Bank Name......

Your Account Number......

Thanks Yours Friend
Mr. Armed Zango
REPLY TO-- (mrarmedzango@gmail.com)
