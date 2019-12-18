Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9DC0124D16
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2019 17:22:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726985AbfLRQWs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Dec 2019 11:22:48 -0500
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:26302 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726955AbfLRQWr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Dec 2019 11:22:47 -0500
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id xBIGLkPH096854;
        Wed, 18 Dec 2019 11:22:45 -0500
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wyq7dh0e9-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 18 Dec 2019 11:22:45 -0500
Received: from m0098404.ppops.net (m0098404.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id xBIGLtPE098632;
        Wed, 18 Dec 2019 11:22:45 -0500
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.10])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wyq7dh0d8-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 18 Dec 2019 11:22:45 -0500
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
        by ppma02dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xBIGK8Kj024191;
        Wed, 18 Dec 2019 16:22:44 GMT
Received: from b03cxnp07028.gho.boulder.ibm.com (b03cxnp07028.gho.boulder.ibm.com [9.17.130.15])
        by ppma02dal.us.ibm.com with ESMTP id 2wvqc70hbt-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 18 Dec 2019 16:22:44 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
        by b03cxnp07028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id xBIGMhJ421955030
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 18 Dec 2019 16:22:43 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id E79887805E;
        Wed, 18 Dec 2019 16:22:42 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 37F047805C;
        Wed, 18 Dec 2019 16:22:42 +0000 (GMT)
Received: from leobras.br.ibm.com (unknown [9.18.235.137])
        by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
        Wed, 18 Dec 2019 16:22:41 +0000 (GMT)
Message-ID: <4171feef2b800a453543583e39a241f734cd317a.camel@linux.ibm.com>
Subject: Re: [PATCH] vmsplice.2: SPLICE_F_GIFT became no-op
From:   Leonardo Bras <leonardo@linux.ibm.com>
To:     Jens Axboe <axboe@kernel.dk>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Date:   Wed, 18 Dec 2019 13:22:37 -0300
In-Reply-To: <258fa69f-9eee-677b-e349-96197761dd3b@kernel.dk>
References: <20190801222417.14413-1-leonardo@linux.ibm.com>
         <b65e1f8f-34b4-0db6-bd7a-7b866b29af7a@gmail.com>
         <de08861a89ca3481fe81e80e509b7572116260c0.camel@linux.ibm.com>
         <258fa69f-9eee-677b-e349-96197761dd3b@kernel.dk>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-CgiXfzeE0R51cGGeQwTP"
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-18_05:2019-12-17,2019-12-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1011 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 bulkscore=0 adultscore=0 mlxlogscore=999 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912180134
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--=-CgiXfzeE0R51cGGeQwTP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-12-17 at 18:13 -0700, Jens Axboe wrote:
> Sorry, better late than never?

No problem :)

> He's right, Nick Piggin removed that flag (and promised to reinstate it,
> but a decade later I'm not holding my breath).

Thanks for the feedback!

Best regards,
Leonardo Bras

--=-CgiXfzeE0R51cGGeQwTP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMdeUgIzgjf6YmUyOlQYWtz9SttQFAl36Uk0ACgkQlQYWtz9S
ttQldxAAuBgzVwriy7BU7XiThWkkeJzMRNaEuZ+KNLkMXJWAzuxAouvS9svgwSND
x6oLlAQ5YtBOMy0f83LogjHEZsR8NE0u1PBYaDh9FKn7JUQ3mrTPusvoFUmCszMQ
l7zD06jC9cbD01UIj7y/R6xM6go9L6iekHWh/fBXz0M71Fswt2ZpjxS/xxxJlhZ/
njslSMvfE0LN1a/ulWfMKg7RG70yv9fYONidOVjkU60CIf4a1vQT82gvVKt+7O/E
R1yoyWWIGnqw+2xffdCS2LZqafgq4X7AVo0oiHYZlzviKQ77+zHjkbTzL+t4+qzG
4L2Z0Vq4pO9luxokfZWwWsK/+sLHVyPyoa6b9RKbzaCP1sM4Owt3EQNe6ofQtXdv
GB9ptlTdtDFp3VG6UO5xC6lhbBfTYJ0iNh/mOgD7Huf4Ts1qFnPxMt0LnF/P3mts
9i/Tv/IFkM91YlGZy7oZjAnIVRX/9OF2YX4suEMZMFTXjmH3VPIscKifJ1egAx+U
RkHpgU6UXtHDDfQ51QNWBsz4FsI6YWMQem+SzxtPk6Cl6ZTKgVB+JqyJzsGs08lG
csQ1xvhbXxtdF89wjdkKSTsgzFXXtzhvjAWWEEs/NrIXC8jc6GWq8q2Kb/VIy3zW
XxASJkkKYQyYpOuCeExsjQBKge9PHvejHl6iCiGb82jugRcL6H4=
=fnUg
-----END PGP SIGNATURE-----

--=-CgiXfzeE0R51cGGeQwTP--

