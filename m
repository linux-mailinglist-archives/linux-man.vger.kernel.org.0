Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B3526D0D49
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 20:02:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbjC3SCq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 14:02:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbjC3SCp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 14:02:45 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3720E19C
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 11:02:44 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3ef7016e69bso131275e9.1
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 11:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1680199363;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qGAdsXUne3C9CyUnS1v2E7WEir3QUKKyfgO80vSzZv8=;
        b=CEKohM3xzSNNOgwai7H4nQdK588o7StLIdFZz6P6cqBMM55lokmbv6xqP3VSC0NVgB
         yXRXFJOcQuxCSdD0XJc1i3yka2Zf9fp7m99YJZfA5cyLc7fYFCo2zm10gQyiA6fc/AKc
         5wgEems7DLgL5sqmHO66qZhQUaPD+58ix5IIjFRfb1OYNDdun1QiJwRARPE5LE84vfR0
         i+wjddvWBi7r8iz8+ov5CB+O7kUuu2MRK6NG+HFy5E/9E3ToSdrrCo2YpWkSW1dq/nsp
         sRaDC3A0LIPCaz7IqnQLNatavYuYlgKH8jKFq4G0rvRHmrXrhrwBYKASEGqh+2nH5Nlt
         LTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680199363;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qGAdsXUne3C9CyUnS1v2E7WEir3QUKKyfgO80vSzZv8=;
        b=N4X4jG4Xrwxa5c2Fn0GeuxTf/kk+ve2vUtb4sSJmJB/2j9hB+Xxpv/dADYFfSzew+z
         s3bFqdTA+F3+vZbcb6HoZvSAsAhPkcFZX8fYbhD+NJ5PXKm+urn4MxrwSMXMIUxdALx4
         l8Ly1eUvxWPyMnu9TJ1EvtD/vRZyUCT8W4Em5f/JVSVB6eXo4567PANcndROdJnU75dT
         FGPoylo3LopU4XvKgX3ugZ91ZBwe0RufX/0mXOkYqjWy6TPkvWdvbFL3VtQHetOTgmt8
         Odg/TJUj6NMrkkHthWpSFJjQv4PfYlQ0bLeHZ3vSagN/k/7D63de6hRMlLvQg5n99hRP
         alcw==
X-Gm-Message-State: AAQBX9d1+Kdw86S47AAj1jAcLczMzbKQCOSo+jAIQNSvl3bJqaeRQsgh
        A5IIAcNRk5j9siks89pYb7M25MOA/Tg2iuCsEei47Q==
X-Google-Smtp-Source: AKy350biVunM5usY9gKvgrVSMzit+/ZOqBrHcJji90Y5hdl6+uxc2hhTI736nqBLY8xQXdbGSdwGI2ZQJyqAQYsmbk8=
X-Received: by 2002:a05:600c:4e11:b0:3ef:79cc:61ce with SMTP id
 b17-20020a05600c4e1100b003ef79cc61cemr11636wmq.4.1680199363230; Thu, 30 Mar
 2023 11:02:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230320222057.1976956-1-talumbau@google.com> <CAOUHufbLykJj5TtHgYuot-Jw6Uu19yLPS2R4eTV8ThRd+7eAcQ@mail.gmail.com>
In-Reply-To: <CAOUHufbLykJj5TtHgYuot-Jw6Uu19yLPS2R4eTV8ThRd+7eAcQ@mail.gmail.com>
From:   Yu Zhao <yuzhao@google.com>
Date:   Thu, 30 Mar 2023 12:02:06 -0600
Message-ID: <CAOUHufZqnZXcnrgHYDDAwFsHRr=O+7FYPdDA9UNALzQaK+bQ=A@mail.gmail.com>
Subject: Re: [PATCH v3] posix_fadvise.2: NOREUSE now supported.
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        linux-man@vger.kernel.org, "T.J. Alumbaugh" <talumbau@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-15.7 required=5.0 tests=DKIMWL_WL_MED,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,ENV_AND_HDR_SPF_MATCH,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Mar 20, 2023 at 4:33=E2=80=AFPM Yu Zhao <yuzhao@google.com> wrote:
>
> On Mon, Mar 20, 2023 at 4:21=E2=80=AFPM T.J. Alumbaugh <talumbau@google.c=
om> wrote:
> >
> > POSIX_FADV_NOREUSE is now supported in Linux[1].
> > Updates text regarding former no op behavior. Indicates the readahead
> > policy and treatment of file pages read with this flag.
> >
> > [1]: https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@g=
oogle.com/
> >
> > Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
>
> Acked-by: Yu Zhao <yuzhao@google.com>

Hi Alex,

Friendly ping.

Thank you.
