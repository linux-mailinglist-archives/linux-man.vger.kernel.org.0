Return-Path: <linux-man+bounces-3250-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CB3B007CE
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 17:57:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 134B97BB2CE
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 15:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B87279DB6;
	Thu, 10 Jul 2025 15:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="A8/0RVa9"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E433A279DAB
	for <linux-man@vger.kernel.org>; Thu, 10 Jul 2025 15:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752162922; cv=none; b=TZeV6dFHlq0S4L9O55SntbwY05g8x2bAzNopOaJ9DF3RO4prWZsr3iZScbsfDUdAQ7McYCbzu3j5WhUGkZVuIoeoUA5r2K7NV2PDCiIR1holl4Fm0Okt5Xk7DH6ayxnfsQEZg4H3rUz5eoH/0dczpxQdV1MlhH625g+WBS5z9hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752162922; c=relaxed/simple;
	bh=EvO+PRWk1l07/ELiGt7pTSGRCFD1lDNEYXtLefNSAWE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LwYsF+epn4fTyIkSIYsHQpI2GoUwpaQoYclkgL4nUfV++Rn/mzQq5KsHi7Yxv4NYwBVXKpDrzYWlL2znr/gHIIbJ1K5wDKyXZpgKVwW8+OfIl3xelTXqsMYEXnwlbgfa9f7YMw0BoDXt24EAv7pC2g7WOxvAPbvUUi0ws4iCLXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=A8/0RVa9; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752162918;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=HyinjIhOJaY25A8tbGVyabQm/4LQ8B1oxKi2tpLkxig=;
	b=A8/0RVa9PZaCH3vUeYY7cCorMMES7FLasR/4/SVUzT3V+pGaMEA34TWrAmGQ2//M6o4KZ+
	D2xSBpa6WBVEoU3WfIdgaxzmuxtArdzaOyCiFQRZ5cl6o0K3luKpkwCgoFD4D/HIP2Cjbq
	H5U7GCiW5Dz71vkcrbi7xZ8h1lSxgUU=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-345-tJhvzUWBM_2P-jJ0wPDfWQ-1; Thu, 10 Jul 2025 11:55:16 -0400
X-MC-Unique: tJhvzUWBM_2P-jJ0wPDfWQ-1
X-Mimecast-MFC-AGG-ID: tJhvzUWBM_2P-jJ0wPDfWQ_1752162916
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d44d773e23so246378785a.3
        for <linux-man@vger.kernel.org>; Thu, 10 Jul 2025 08:55:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752162915; x=1752767715;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HyinjIhOJaY25A8tbGVyabQm/4LQ8B1oxKi2tpLkxig=;
        b=meud9yx72KxCxj5RfINB0biYNFRj5GC7KmhYQPjrvZxYHTsE4Be/FfWcBXAExhIX2d
         +agNKRz+9m05Qe596VLFG0wfWDzjgonhJxPboJFyb4JwUQ4ZKeiBqu+bO2DEn+1MqdOL
         9hHNHXofDtCw2oaRj9JMOdBpw/pHmw1wfPtnxQbMl4HkA2spCg6sgCYH/JANOk0Aer0e
         8KQX3ZF1ETtWxjasrBuYowJIABKBCem/pZEht4YB0WFKjb8FAInHb1gjgDEy4ESCThSn
         mhdvlPDtjlLk54Tn5W3ENjTrT3pQNuGOGnacwRXf8+Z/wV1dTQ2PuBHqcWVgQ1VfJcxf
         INgg==
X-Forwarded-Encrypted: i=1; AJvYcCU3NpSF4lKJwFdRdHP8MDewqIA89x/DMw5kXBUjvDl/deYLRCCxM+juwSb2rSN98oXdDILXq4gKErA=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/9KKo1qQsAMgVo2Nm1SDvCansbFDU75GtoMi9aA/3qeHA7ldT
	QANH9qEAqqZ4sz4+osqHnedrWRS24ts0CAZxvsIUPmjwm2xfqs6CogQTOaQPqnpAfu3kkLZb+pT
	moBU43P6L4/oQ83y5Z5ihazXKM0SIuF/kw7GZ/Lj7Ig/Bbjn9GGbcBgGydMHiDNssJx1dwA==
X-Gm-Gg: ASbGncthP3kznrwFnakeY0TpQYIB+9j3hNMCJwEnPuymMsiFPHrRrS+Sz7ZcLd824aL
	3djVi1gJizfZrIjolJ25iOmmlDym5g4DgRyzkksLXbWheywa/7Y1GW/BEmG5My77FTPMXQEzGqW
	qhgaUDxPjYw8m4vrIga6In3/9DD74V+wLNQD8TBYCduArvWUAruHxnZWnYjGFZLnTydWHulIh1g
	ik01HE4BBGZOvL8S+xANyRVNaes0q18Qd7r8BS7810RSO/Kpb2rTKG47fc3XmQG5NKGYzk0GGMp
	xwbCCliNM7oElN3tNjatU40=
X-Received: by 2002:a05:620a:6003:b0:7dc:d99b:d3a3 with SMTP id af79cd13be357-7ddebc934d9mr2521785a.29.1752162915319;
        Thu, 10 Jul 2025 08:55:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGe26fYlEfuqyfD/WFbc0SCnUDRs3q7Y613D/XD5Z5+uMPScH+mx82jOfOrUUvHawz4Cbs+IQ==
X-Received: by 2002:a05:620a:6003:b0:7dc:d99b:d3a3 with SMTP id af79cd13be357-7ddebc934d9mr2519485a.29.1752162914936;
        Thu, 10 Jul 2025 08:55:14 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7dcde32bf58sm108337385a.60.2025.07.10.08.55.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 08:55:14 -0700 (PDT)
Message-ID: <d37b4e97-bac7-44c0-901b-e7b686c985b2@redhat.com>
Date: Thu, 10 Jul 2025 11:55:13 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Missing man pages
To: Steve French <smfrench@gmail.com>, Alejandro Colomar <alx@kernel.org>
Cc: CIFS <linux-cifs@vger.kernel.org>, linux-man <linux-man@vger.kernel.org>,
 Bharath SM <bharathsm.hsk@gmail.com>
References: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/10/25 11:07 AM, Steve French wrote:
> How can we get missing man page (mount.cifs) added to man7.org?
> 
> https://git.samba.org/?p=cifs-utils.git;a=blob;f=mount.cifs.rst;h=d4890706a0fed73f05b3a228971756b57efcb9ba;hb=refs/heads/master
> 
> I noticed today that mount.cifs man page is missing from your site
> (and presumably the user space tools man pages are also missing
> cifscreds.rst   cifs.upcall.rst  idmapwb.rst     pam_cifscreds.rst
> smb2-quota.rst cifs.idmap.rst  getcifsacl.rst  setcifsacl.rst
> smbinfo.rst)

Since Michael started adding a curated set of man pages to man7.org
from other projects in 2013... how are those sources kept up to date?

Is man7.org a part of the Linux Man Pages project or just Michael's
own published collection of man pages?

-- 
Cheers,
Carlos.


