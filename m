Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F7A62489EA
	for <lists+linux-man@lfdr.de>; Tue, 18 Aug 2020 17:32:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726585AbgHRPcp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Aug 2020 11:32:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727020AbgHRPcl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Aug 2020 11:32:41 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAAB8C061389
        for <linux-man@vger.kernel.org>; Tue, 18 Aug 2020 08:32:40 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id b30so10431782lfj.12
        for <linux-man@vger.kernel.org>; Tue, 18 Aug 2020 08:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=BFFF3VWoncfe+Hj3FRWR5WHjZ4XQJ358pgRjNAVeVGA=;
        b=CgHGO3wLw6Kwqv7854wVleA6HsP3HzuSX27l/m0J65K+F59PqDMMITqg1xBVUkC0Tk
         pPmIzzYE6WO06TmRVqcB0o74MAbD4/jo2KUnvjxZVKQOZRMyxBkJ+H8AzXGu3WziaBZB
         psA4FFTJ1i+0fsOBI17/mCYtNCjGjyq5gNF4OtewWKGtca4aOcQLxgiRf8tP821enoLy
         rrAPgtsexIJom9zC35XJ567NhOcTtG1tJaiOXT88p0DTzIMnzIkt2G5Tdu2hF0M8jxWe
         3+qnhtI6w2CcLNfjWSaITFy1Qf+B35OrYPgPdiWgwxjQG8ulv8Aoge7Pipzj65dl6lar
         rM6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=BFFF3VWoncfe+Hj3FRWR5WHjZ4XQJ358pgRjNAVeVGA=;
        b=LIbbVGipsvKtFqrtRCkA3//bLp3OZLp0oy1JWJqQmDC/SkVR/bGy3OnNfzO+hHiRQZ
         ksyo60x38t7j+l9HHOyjRiiqfjfVopgu/pBRrgZD2nI4WEIPwCXhiUsPf+c83jAFOE0r
         Uv/8VQX2/UbF8fUZLg41Cns/pAqpjz0dgsfx2Yw2gnn8c06yFPp8YBHykhexR8HqJCup
         PbjamZHmtc4vVs3/ai8/Zr5KWrg3SUkNGDVqo3HxGSeNsn+STv+rCsfgzMdSDatgCeR+
         i+uQJPlGr2wQUnBPWAd+vXlqP2LqZA/5+q3uiPxoq99iIIGCTor4BgawaUuK0L/w/ZEU
         FATw==
X-Gm-Message-State: AOAM533dthpPsd2TFpMjeogQuSEU9QrVI352nD5ynv1J4OiKUNUwPHsS
        gNTSk3hgNWmk0H3uWbU983VheVFOdByQuZi4I4s=
X-Google-Smtp-Source: ABdhPJxmeCfgELyjd24BR0m11nfjFRS62NLXzN6fQs8MskJ/nxAcyWUIckiKbmjk6GyYJYO8K75YjwXd+9quwcoSf1I=
X-Received: by 2002:a19:ae0a:: with SMTP id f10mr9990141lfc.100.1597764759298;
 Tue, 18 Aug 2020 08:32:39 -0700 (PDT)
MIME-Version: 1.0
References: CAAJR7qZtkfZ+=vw5B-6Mmb_WhFfZkfTjJ0vaC3Q6u1v+up_PvA@mail.gmail.com <20200818152940.383D9C061342@lindbergh.monkeyblade.net>
In-Reply-To: <20200818152940.383D9C061342@lindbergh.monkeyblade.net>
From:   Rushil Umaretiya <rushilwiz@gmail.com>
Date:   Tue, 18 Aug 2020 11:32:02 -0400
Message-ID: <CAAJR7qbKpqVtHBKRKxV=cpzuJwsgtfnt-6vUMi3WbVBVbOTN9w@mail.gmail.com>
Subject: Fwd: Undelivered Mail Returned to Sender
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Seems that I had html in the last one, 3rd time's the charm.

Small typo on sudo(8), as of 8/11/20, version in the options:

     -B, --bell  Ring the bell as part of the password promp when a termina=
l
                 is present.  This option has no effect if an askpass pro=
=E2=80=90
                 gram is used.

somebody seemed to have missed a 't' in prompt
