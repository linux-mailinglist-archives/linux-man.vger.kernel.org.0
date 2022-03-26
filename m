Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 863594E7E62
	for <lists+linux-man@lfdr.de>; Sat, 26 Mar 2022 02:14:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbiCZBPm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Mar 2022 21:15:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229747AbiCZBPm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Mar 2022 21:15:42 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53D0F4706C
        for <linux-man@vger.kernel.org>; Fri, 25 Mar 2022 18:14:06 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id e16so15977565lfc.13
        for <linux-man@vger.kernel.org>; Fri, 25 Mar 2022 18:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=WJHAKJ+oIxXvJZu1DBiESyzYbqwQrfIWZU8TIVkfoIg=;
        b=U38Qkr6VJ72H5EQSrtpwOjTyuukKZVQUn2jsn4pGSJbJTyLWPCHIeP91nO0ZWuorXm
         lRnp2Ixx42X1rm4+umX0qYdTmesE4tA51YKnG7syvfpKDKfe1erAm4mbe5uZiMyPwIEd
         /BYW8SU3HmCwkPghkqyPuoPm0gvYMG7CjKDWdCIdiejm0ugZc4SbW1UVP7B7pEdcSc8g
         TPSgQN7Rw+LU0HrpuxismpKjfAMKth7tKmapU/j85QZRM8TkCOMfMDrAVO/MaR+nnp5z
         RI8p+VVbB7h8MytIB4Pqn1XCtVJdrv3tUalEGhYFMSFn3XLYfbRogfoBvSLAQcjZDKC6
         E+3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=WJHAKJ+oIxXvJZu1DBiESyzYbqwQrfIWZU8TIVkfoIg=;
        b=VjxLFAn0/FflVSxaoSlwrhXCESSS9+XfNNgiz/uEkN+cbVzZ2KLxQxUI60gwilWLP8
         yoDjRJghRv0M4tRX5qlmgOC3QfTcgwCHByQpQBnQ1FjnHretHI9gswDCzwDfI7mHXM/Y
         EI3xLoWbOPxAQrGFdmqoT3DEhmUqTs43YfAWv93F9ukWig9uggN91/LQAMDdqt4ua0CH
         SXgvjmYgAmICgQ7y16IVD05wDhSzA7xNl7m1bIjx65hQMWYIAxiaCgGZzxDYWyTrLvA7
         blX6932dXhKpSJ/4ntkFm5DCw7sLz7setHnLslB777i6OJNgZvsCEkueOrQlpGav1cE1
         Ws8w==
X-Gm-Message-State: AOAM530n9+++SjeSsXAC8S+Tw7q/K9NUNXompGR8W8kn05V6vCpdXbIi
        j19UkOxF/O4b5E7M4nVqWYguH+VctBkog8QTy6A=
X-Google-Smtp-Source: ABdhPJwUF+IvOHHRqgig0b9oMXcUL5J3XbYMOhwKxNNZomsew0GPdD1Dy1JjQbJ8rxY3e151rkYFulZ/529SKLJmJ2k=
X-Received: by 2002:a05:6512:a89:b0:44a:3936:3a22 with SMTP id
 m9-20020a0565120a8900b0044a39363a22mr10084032lfu.364.1648257244320; Fri, 25
 Mar 2022 18:14:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:6591:0:0:0:0:0 with HTTP; Fri, 25 Mar 2022 18:14:03
 -0700 (PDT)
Reply-To: mr.hambrook.jeremy@gmail.com
From:   "Mr Hambrook P. Jeremy" <bafalikiaklesso@gmail.com>
Date:   Sat, 26 Mar 2022 01:14:03 +0000
Message-ID: <CACoqBR7wWcst8LtUywvcuC7CXFZPZVdhxvPxytxmuiCRt-3t2g@mail.gmail.com>
Subject: BHTR
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.6 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi my friend, I am Hambrook P. Jeremy, Please did you receive my
previous mail message? Please reply urgently for it is Very Important;
Hambrook P. Jeremy.
